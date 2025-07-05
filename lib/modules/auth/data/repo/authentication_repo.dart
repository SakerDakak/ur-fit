import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/exceptions.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../core/domain/error/failures.dart';
import '../../../onboarding/model/country/country_model.dart';
import '../authentication/authentication_remote_datasource.dart';
import '../models/register_model.dart';
import '../models/user/user_model.dart';

class AuthenticationRepo {
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;
  // final UserLocalDataSource userLocalDataSource;

  AuthenticationRepo(this.authenticationRemoteDataSource);

  Future<Either<Failure, ({UserModel user, String token})>> login(
      {required String email, required String password}) async {
    try {
      final result = await authenticationRemoteDataSource.login(email: email, password: password);
      final token = result["token"];
      final user = UserModel.fromJson(result['user']);

      return Right((user: user, token: token));
    } on Exception catch (e) {
      print("e $e");
      if (e is DioException) {
        // return left(ServerFailure((e as DioException).response?.data?['data'].toString() ?? ""));
        return left(ServerFailure(MessageHandeler.handleErrorMessage(e)));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> signOut() async {
    try {
      await authenticationRemoteDataSource.signOut();
      // final deleteReuslt = await userLocalDataSource.deleteUser();
      // final  result;
      return const Right(null);
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

  Future<Either<Failure, UserModel>> otpCheckCode({required String email, required String code}) async {
    try {
      final result = await authenticationRemoteDataSource.otpCheckCode(code: code, email: email);
      if (result['status'] == "unverified code") {
        throw BadRequestException(L10n.tr().unverifiedCode);
      } else {
        // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['data'])));
        final user = UserModel.fromJson(result['data']);
        return Right(user);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String?>> updatePassword({required String password, required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.updatePassword(password: password, email: email);
      // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['data'])));
      final user = UserModel.fromJson(result['data']);
      return Right("user");
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
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

  Future<Either<Failure, ({UserModel user, String token})>> register(RegisterModel registerModel) async {
    try {
      final result = await authenticationRemoteDataSource.register(registerModel);

      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final token = result["token"];
      final user = UserModel.fromJson(result['user']);
      return Right((user: user, token: token));
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> resendOtp({required String email}) async {
    try {
      final result = await authenticationRemoteDataSource.resendOtp(email: email);

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

  Future<Either<Failure, Either<Map<String, dynamic>, UserModel?>>> registerVerifyCode(
      {required String code, required String verificationId}) async {
    try {
      final result =
          await authenticationRemoteDataSource.registerVerifyCode(code: code, verificationId: verificationId);
      if (result['token'] != null) {
        await TokenService.setToken(result["token"]);
        // print(await sl<BaseUserLocalDataSource>().getUserToken());
        // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
        final user = UserModel.fromJson(result['user']);
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

  Future<Either<Failure, UserModel>> getUserDataFromServer() async {
    try {
      final result = await authenticationRemoteDataSource.getUserData();

      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      // await saveUser(CacheUser.fromUserModel(result));
      // final user = CacheUser.fromUserModel(result);
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UserModel?>> loginWithGoogle(
      {required String accessToken, required RegisterModel registerModel}) async {
    try {
      final result =
          await authenticationRemoteDataSource.loginWithGoogle(accessToken: accessToken, registerModel: registerModel);
      await TokenService.setToken(result["token"]);
      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final user = UserModel.fromJson(result['user']);
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
