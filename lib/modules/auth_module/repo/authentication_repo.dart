import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:urfit/core/error/exceptions.dart';
import 'package:urfit/generated/locale_keys.g.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../core/api/api_client.dart';
import '../data/authentication/authentication_local_datasource.dart';
import '../data/authentication/authentication_remote_datasource.dart';
import '../data/models/register_model.dart';
import '../data/models/slider_image_model.dart';
import '../data/models/user/cached_user.dart';
import '../data/models/user/user_model.dart';
import '../onboarding/model/country/country_model.dart';

abstract class BaseAuthenticationRepo {
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, CacheUser?>> getUserData();
  Future<Either<Failure, void>> sendCode({required String email});
  Future<Either<Failure, void>> sendSubscriptionInfo({required String token});

  Future<Either<Failure, CacheUser?>> verifyOtp(
      {required String email, required String code});
  Future<Either<Failure, void>> resetPassword(
      {required String password,
      required String confirmPassword,
      required String email});
  Future<Either<Failure, void>> verifyEmailOtp(
      {required String code, required verificationId});
  // Future<Either<Failure,UserCredential>> socialAuth(SocialLogin socialLogin);
  // Future<Either<Failure,UserModel>> socialAuthWithApi(body);
  Future<Either<Failure, void>> deleteToken();
  Future<Either<Failure, CacheUser?>> changePassword(
      {required String password});

  // Future<Either<Failure, void>> persistToken(String token);

  Future<Either<Failure, String?>> hasToken();

  Future<Either<Failure, CacheUser?>> login(
      {required String email,
      required String password,
      required bool remember});

  // Future<Either<Failure, void>> updateUserData(Map<String, dynamic> data);

  Future<Either<Failure, void>> saveUser(CacheUser cacheUser);

  Future<Either<Failure, Map<String, dynamic>>> forgetPassword(
      {required String email});
  Future<Either<Failure, Map<String, dynamic>>> getUserTypes();
  Future<Either<Failure, CacheUser?>> register(
      RegisterModel registerModel);
  Future<Either<Failure, Map<String, dynamic>>> registerUpdatePhone(
      {required String phone, required String verificationId});
  Future<Either<Failure, String>> registerResendOtp(
      {required String email});
  Future<Either<Failure, Either<Map<String, dynamic>, CacheUser?>>>
      registerVerifyCode(
          {required String code, required String verificationId});

  Future<Either<Failure,List<CountryModel>>> getCountries();
  Future<Either<Failure,List<CountryModel>>> getCities({required int countryId});
  Future<Either<Failure,CacheUser>> getUserDataFromServer();
  Future<Either<Failure,List<SliderImageModel>>> getSliderImages();

}

class AuthenticationRepo extends BaseAuthenticationRepo {
  final BaseAuthenticationRemoteDataSource authenticationRemoteDataSource;
  final BaseUserLocalDataSource userLocalDataSource;

  AuthenticationRepo(
      this.authenticationRemoteDataSource, this.userLocalDataSource);

  // @override
  // Future<Either<FirebaseAuthException, void>> sendOtp(
  //     {required String phoneNumber,
  //     required PhoneCodeSent codeSent,
  //       required PhoneVerificationFailed phoneVerificationFailed,
  //     required PhoneVerificationCompleted verificationCompleted}) async {
  //   try {
  //     final result = await authenticationRemoteDataSource.sendOtp(
  //         phoneNumber: phoneNumber,
  //         autoRetrievalTimeout: (String verificationId) {},
  //         phoneCodeSent: codeSent,
  //         phoneVerificationCompleted: verificationCompleted,
  //         phoneVerificationFailed: phoneVerificationFailed);
  //     return Right(result);
  //   } on FirebaseAuthException catch (e, error) {
  //     if (kDebugMode) {
  //       print("Auth Stacktrace : $error");
  //     }
  //     return Left(FirebaseAuthException(
  //       message: e.message,
  //       code: e.code,
  //       credential: e.credential,
  //       email: e.email,
  //       phoneNumber: e.phoneNumber,
  //       tenantId: e.tenantId,
  //     ));
  //   }
  // }
  //
  // @override
  // Future<Either<FirebaseAuthException, UserCredential>> phoneAuth(
  //     {required String phoneNumber,
  //     required String code,
  //     required String verificationId}) async {
  //   try {
  //     final result = await authenticationRemoteDataSource.phoneAuth(
  //         phoneNumber: phoneNumber, code: code, verificationId: verificationId);
  //     print(result);
  //
  //     return Right(result);
  //   } on FirebaseAuthException catch (e, error) {
  //     if (kDebugMode) {
  //       print("Auth Stacktrace : $error");
  //     }
  //     return Left(FirebaseAuthException(
  //       message: e.message,
  //       code: e.code,
  //       credential: e.credential,
  //       email: e.email,
  //       phoneNumber: e.phoneNumber,
  //       tenantId: e.tenantId,
  //     ));
  //   }
  // }

  @override
  Future<Either<Failure, void>> deleteToken() async {
    try {
      final result = await userLocalDataSource.deleteUserToken();
      await userLocalDataSource.deleteUser();

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, String?>> hasToken() async {
    try {
      final result = await userLocalDataSource.getUserToken();

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  // @override
  // Future<Either<Failure, void>> persistToken(String token) {
  //   // TODO: implement persistToken
  //   throw UnimplementedError();
  // }

  @override
  Future<Either<Failure, CacheUser?>> login(
      {required String email,
      required String password,
      required bool remember}) async {
    try {
      final result = await authenticationRemoteDataSource.login(
          email: email, password: password);
      if(remember){
        await FlutterKeychain.put(key: 'email', value: email);
        await FlutterKeychain.put(key: 'password', value: password);
      }
        await userLocalDataSource.saveUserToken(result["token"]);
        await sl<DioServices>().init();
        // print(await sl<BaseUserLocalDataSource>().getUserToken());
        await saveUser(
            CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
        final user =
            CacheUser.fromUserModel(UserModel.fromJson(result['user']));
        return Right(user);

    } on Exception catch (e) {
      print("e $e");
      if(e.runtimeType == DioException){
        return left(ServerFailure((e as DioException).response?.data?['data'].toString() ?? ""));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveUser(CacheUser cacheUser) async {
    try {
      final result = await userLocalDataSource.saveUserToHive(cacheUser);

      return Right(result);
    } on Failure catch (e) {
      return left(e);
    }
  }

  // @override
  // Future<Either<Failure, String>> phoneAuthWithApi(String phone) async {
  //   try {
  //     final result =
  //         await authenticationRemoteDataSource.phoneAuthWithApi(phone);
  //     await userLocalDataSource.saveUserToken(result);
  //     return Right(result);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, void>> register(CarModel carModel) async {
  //   try {
  //     final result = await authenticationRemoteDataSource.register(carModel);
  //
  //     return Right(result);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      final result = await authenticationRemoteDataSource.signOut();
      final deleteReuslt = await userLocalDataSource.deleteUser();
      return Right(deleteReuslt);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CacheUser?>> getUserData() async {
    try {
      final result = await userLocalDataSource.getPersistedUser();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> sendCode({required String email}) async {
    try {
      final result =
          await authenticationRemoteDataSource.sendCode(email: email);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, CacheUser>> verifyOtp(
      {required String email, required String code}) async {
    try {
      final result = await authenticationRemoteDataSource.verifyOtpCode(
          code: code, email: email);
      if(result['status'] == "unverified code" ) {
        throw BadRequestException(LocaleKeys.unverifiedCode.tr());
      }else{
      await saveUser(
          CacheUser.fromUserModel(UserModel.fromJson(result['data'])));
      final user = CacheUser.fromUserModel(UserModel.fromJson(result['data']));
      return Right(user);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CacheUser?>> changePassword(
      {required String password}) async {
    //   try {
    //   // final result = await authenticationRemoteDataSource.verifyOtpCode(code: password);
    //   // await userLocalDataSource.saveUserToken(result["token"]);
    //   // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
    //   // final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
    //   return Right(user);
    // } on Exception catch (e) {
    //   return left(ServerFailure(e.toString()));
    // }
    throw Exception();
  }

  @override
  Future<Either<Failure, void>> sendSubscriptionInfo({required String token}) {
    // TODO: implement sendSubscriptionInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> forgetPassword(
      {required String email,}) async {
    try {
      final result = await authenticationRemoteDataSource.forgetPassword(
          email: email);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> verifyEmailOtp(
      {required String code, required verificationId}) async {
    try {
      // print("verity otp $code $verificationId");

      final result = await authenticationRemoteDataSource.verifyEmailOtpCode(
          code: code, verificationId: verificationId);
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword(
      {required String password,
      required String confirmPassword,
      required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.resetPassword(
          newPassword: password,
          confirmPassword: confirmPassword,
          email: email);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getUserTypes() async {
    try {
      final result = await authenticationRemoteDataSource.getUserTypes();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CacheUser?>> register(
      RegisterModel registerModel) async {
    try {
      final result = await authenticationRemoteDataSource.register(
          registerModel);

      await userLocalDataSource.saveUserToken(result["token"]);
      await sl<DioServices>().init();
      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      await saveUser(
          CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final user =
      CacheUser.fromUserModel(UserModel.fromJson(result['user']));
      return Right(user);

    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> registerResendOtp(
      {required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.registerResendOtp(
          email: email,);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> registerUpdatePhone(
      {required String phone, required String verificationId}) async {
    try {
      final result = await authenticationRemoteDataSource.registerUpdatePhone(
          phone: phone, verificationId: verificationId);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Either<Map<String, dynamic>, CacheUser?>>>
      registerVerifyCode(
          {required String code, required String verificationId}) async {
    try {
      final result = await authenticationRemoteDataSource.registerVerifyCode(
          code: code, verificationId: verificationId);
      if (result['token'] != null) {
        await userLocalDataSource.saveUserToken(result["token"]);
        await sl<DioServices>().init();
        // print(await sl<BaseUserLocalDataSource>().getUserToken());
        await saveUser(
            CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
        final user =
            CacheUser.fromUserModel(UserModel.fromJson(result['user']));
        return Right(Right(user));
      } else {
        return Right(left(result));
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CountryModel>>> getCountries() async {
    try {
      final result = await authenticationRemoteDataSource.getCountries();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CountryModel>>> getCities({required int countryId}) async {
    try {
      final result = await authenticationRemoteDataSource.getCities(countryId: countryId);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CacheUser>> getUserDataFromServer() async {
    try {
      final result = await authenticationRemoteDataSource.getUserData();

      await sl<DioServices>().init();
    // print(await sl<BaseUserLocalDataSource>().getUserToken());
    await saveUser(
    CacheUser.fromUserModel(result));
    final user =
    CacheUser.fromUserModel(result);
    return Right(user);

    } on Exception catch (e) {
    return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SliderImageModel>>> getSliderImages() async {
    try {
      final result = await authenticationRemoteDataSource.getSliderImages();
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // @override
  // Future<Either<Failure, void>> updateUserData(
  //     Map<String, dynamic> data) async {
  //   try {
  //     final result = await authenticationRemoteDataSource.upDateUserData(data);
  //     return Right(result);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }
}
