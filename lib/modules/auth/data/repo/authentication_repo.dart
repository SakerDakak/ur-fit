import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/exceptions.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../core/domain/error/failures.dart';
import '../../onboarding/model/country/country_model.dart';
import '../authentication/authentication_local_datasource.dart';
import '../authentication/authentication_remote_datasource.dart';
import '../models/register_model.dart';
import '../models/user/cached_user.dart';
import '../models/user/user_model.dart';

class AuthenticationRepo {
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  AuthenticationRepo(this.authenticationRemoteDataSource, this.userLocalDataSource);

  Future<Either<Failure, void>> deleteToken() async {
    try {
      final result = await TokenService.deleteToken();
      await userLocalDataSource.deleteUser();

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, String?>> hasToken() async {
    try {
      final result = userLocalDataSource.getUserToken();

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  // Future<Either<Failure, void>> persistToken(String token) {
  //   // TODO: implement persistToken
  //   throw UnimplementedError();
  // }

  Future<Either<Failure, CacheUser?>> login(
      {required String email, required String password, required bool remember}) async {
    try {
      final result = await authenticationRemoteDataSource.login(email: email, password: password);
      if (remember) {
        await FlutterKeychain.put(key: 'email', value: email);
        await FlutterKeychain.put(key: 'password', value: password);
      }
      await TokenService.setToken(result["token"]);
      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
      return Right(user);
    } on Exception catch (e) {
      print("e $e");
      if (e.runtimeType == DioException) {
        return left(ServerFailure((e as DioException).response?.data?['data'].toString() ?? ""));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> saveUser(CacheUser cacheUser) async {
    try {
      final result = await userLocalDataSource.saveUserToHive(cacheUser);

      return Right(result);
    } on Failure catch (e) {
      return left(e);
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<Failure, void>> signOut() async {
    try {
      await authenticationRemoteDataSource.signOut();
      final deleteReuslt = await userLocalDataSource.deleteUser();
      return Right(deleteReuslt);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CacheUser?>> getUserData() async {
    try {
      final result = await userLocalDataSource.getPersistedUser();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> sendCode({required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.sendCode(email: email);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, CacheUser>> verifyOtp({required String email, required String code}) async {
    try {
      final result = await authenticationRemoteDataSource.verifyOtpCode(code: code, email: email);
      if (result['status'] == "unverified code") {
        throw BadRequestException(L10n.tr().unverifiedCode);
      } else {
        await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['data'])));
        final user = CacheUser.fromUserModel(UserModel.fromJson(result['data']));
        return Right(user);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CacheUser?>> changePassword({required String password}) async {
    //   try {
    //   // final result = await authenticationRemoteDataSource.verifyOtpCode(code: password);
    //   // await TokenService.setToken(result["token"]);
    //   // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
    //   // final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
    //   return Right(user);
    // } on Exception catch (e) {
    //   return left(ServerFailure(e.toString()));
    // }
    throw Exception();
  }

  Future<Either<Failure, void>> sendSubscriptionInfo({required String token}) {
    // TODO: implement sendSubscriptionInfo
    throw UnimplementedError();
  }

  Future<Either<Failure, Map<String, dynamic>>> forgetPassword({
    required String email,
  }) async {
    try {
      final result = await authenticationRemoteDataSource.forgetPassword(email: email);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, void>> verifyEmailOtp({required String code, required verificationId}) async {
    try {
      // print("verity otp $code $verificationId");

      final result =
          await authenticationRemoteDataSource.verifyEmailOtpCode(code: code, verificationId: verificationId);
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> resetPassword(
      {required String password, required String confirmPassword, required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.resetPassword(
          newPassword: password, confirmPassword: confirmPassword, email: email);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> getUserTypes() async {
    try {
      final result = await authenticationRemoteDataSource.getUserTypes();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CacheUser?>> register(RegisterModel registerModel) async {
    try {
      final result = await authenticationRemoteDataSource.register(registerModel);

      await TokenService.setToken(result["token"]);
      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
      return Right(user);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> registerResendOtp({required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.registerResendOtp(
        email: email,
      );

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> registerUpdatePhone(
      {required String phone, required String verificationId}) async {
    try {
      final result =
          await authenticationRemoteDataSource.registerUpdatePhone(phone: phone, verificationId: verificationId);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, Either<Map<String, dynamic>, CacheUser?>>> registerVerifyCode(
      {required String code, required String verificationId}) async {
    try {
      final result =
          await authenticationRemoteDataSource.registerVerifyCode(code: code, verificationId: verificationId);
      if (result['token'] != null) {
        await TokenService.setToken(result["token"]);
        // print(await sl<BaseUserLocalDataSource>().getUserToken());
        await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
        final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
        return Right(Right(user));
      } else {
        return Right(left(result));
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<CountryModel>>> getCountries() async {
    try {
      final result = await authenticationRemoteDataSource.getCountries();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<CountryModel>>> getCities({required int countryId}) async {
    try {
      final result = await authenticationRemoteDataSource.getCities(countryId: countryId);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CacheUser>> getUserDataFromServer() async {
    try {
      final result = await authenticationRemoteDataSource.getUserData();

      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      await saveUser(CacheUser.fromUserModel(result));
      final user = CacheUser.fromUserModel(result);
      return Right(user);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, List<SliderImageModel>>> getSliderImages() async {
  //   try {
  //     final result = await authenticationRemoteDataSource.getSliderImages();
  //     return Right(result);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  Future<Either<Failure, CacheUser?>> loginWithGoogle(
      {required String accessToken, required RegisterModel registerModel}) async {
    try {
      final result =
          await authenticationRemoteDataSource.loginWithGoogle(accessToken: accessToken, registerModel: registerModel);
      await TokenService.setToken(result["token"]);
      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final user = CacheUser.fromUserModel(UserModel.fromJson(result['user']));
      return Right(user);
    } on Exception catch (e) {
      print("e $e");
      if (e.runtimeType == DioException) {
        return left(ServerFailure((e as DioException).response?.data?['data'].toString() ?? ""));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
