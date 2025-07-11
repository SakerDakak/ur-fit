import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:urfit/core/data/api/api_client.dart';
import 'package:urfit/core/data/api/endpoints.dart';
import 'package:urfit/core/domain/error/exceptions.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../core/domain/error/failures.dart';
import '../../../onboarding/model/country/country_model.dart';
import '../models/register_model.dart';
import '../models/user/user_model.dart';

class AuthRepo {
  // final UserLocalDataSource userLocalDataSource;
  final ApiClient _apiClient;
  AuthRepo(this._apiClient);

  Future<Either<Failure, ({UserModel user, String token})>> login(
      {required String email, required String password}) async {
    try {
      final response = await _apiClient.post(EndPoints.login, data: {'email': email, 'password': password});
      final result = response.data['data'];
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
      await _apiClient.post(EndPoints.logout);
      // final deleteReuslt = await userLocalDataSource.deleteUser();
      // final  result;
      return const Right(null);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> sendCode({required String email}) async {
    try {
      await _apiClient.post(EndPoints.sendEmailActivationCode, data: {'email': email});
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, UserModel>> otpCheckCode({required String email, required String code}) async {
    try {
      final result = await _apiClient.post(EndPoints.otpCheckCode, data: {'email': email, 'otpCode': code});
      if (result.data['status'] == "unverified code") {
        throw BadRequestException(L10n.tr().unverifiedCode);
      } else {
        // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result.data['data'])));
        final user = UserModel.fromJson(result.data['data']);
        return Right(user);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UserModel>> otpForgetPassword({required String email, required String code}) async {
    try {
      final result = await _apiClient.post(EndPoints.otpForgetPassword, data: {'email': email, 'otpCode': code});
      if (result.data['status'] == "unverified code") {
        throw BadRequestException(L10n.tr().unverifiedCode);
      } else {
        // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result.data['data'])));
        final user = UserModel.fromJson(result.data['data']);
        return Right(user);
      }
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String?>> updatePassword({required String password, required String email}) async {
    try {
      final result = await _apiClient.post(EndPoints.setNewPassword,
          data: {'email': email, 'password': password, 'password_confirmation': password});
      // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['data'])));
      return Right(result.data['data'].toString());
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, void>> sendSubscriptionInfo({required String token}) {
  //   // TODO: implement sendSubscriptionInfo
  //   throw UnimplementedError();
  // }

  Future<Either<Failure, Map<String, dynamic>>> forgetPassword({
    required String email,
  }) async {
    try {
      final result = await _apiClient.post(EndPoints.forgetPassword, data: {'email': email});

      return Right(result.data);
    } catch (e) {
      if (e is Failure) return Left(e);
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, void>> verifyEmailOtp({required String code, required verificationId}) async {
  //   try {
  //     final result = await _apiClient
  //         .post(EndPoints.verifyEmailCode, data: {'code': code, '2fa': verificationId, 'token_for': "mobile"});
  //     return const Right(null);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  // Future<Either<Failure, void>> resetPassword(
  //     {required String password, required String confirmPassword, required String email}) async {
  //   try {
  //     final result = await _apiClient.post(EndPoints.setNewPassword, data: {
  //       'password': password,
  //       'password_confirmation': confirmPassword,
  //       'email': email,
  //     });
  //     return const Right(null);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  // Future<Either<Failure, Map<String, dynamic>>> getUserTypes() async {
  //   try {
  //     final result = await _apiClient.get(EndPoints.getUserTypes);
  //     return Right(result.data);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  Future<Either<Failure, ({UserModel user, String token})>> register(RegisterRequest registerModel) async {
    try {
      final response = await _apiClient.post(EndPoints.register, data: registerModel.toJson());

      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
      final token = response.data['data']["token"];
      final user = UserModel.fromJson(response.data['data']['user']);
      return Right((user: user, token: token));
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> resendOtp({required String email}) async {
    try {
      final response = await _apiClient.post(EndPoints.resendOTP, data: {'email': email});

      return Right(response.data['status']);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, Map<String, dynamic>>> registerUpdatePhone(
  //     {required String phone, required String verificationId}) async {
  //   try {
  //     final result =
  //         await _apiClient.post(EndPoints.registerUpdatePhone, data: {'2fa': verificationId, 'phone': phone});
  //     return Right(result.data);
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  // Future<Either<Failure, Either<Map<String, dynamic>, UserModel?>>> registerVerifyCode(
  //     {required String code, required String verificationId}) async {
  //   try {
  //     final result = await _apiClient
  //         .post(EndPoints.registerVerifyPhone, data: {'2fa': verificationId, 'code': code, 'token_for': "mobile-app"});
  //     if (result.data['token'] != null) {
  //       await TokenService.setToken(result.data["token"]);
  //       // print(await sl<BaseUserLocalDataSource>().getUserToken());
  //       // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result.data['user'])));
  //       final user = UserModel.fromJson(result.data['user']);
  //       return Right(Right(user));
  //     } else {
  //       return Right(left(result.data));
  //     }
  //   } on Exception catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  Future<Either<Failure, List<CountryModel>>> getCountries() async {
    try {
      final response = await _apiClient.get(EndPoints.countries);
      final countries = (response.data['data'] as List).map((e) => CountryModel.fromJson(e)).toList();
      return Right(countries);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<CountryModel>>> getCities({required int countryId}) async {
    try {
      final response = await _apiClient.get(EndPoints.cities, parameter: {'country_id': countryId});
      final cities = (response.data['data'] as List).map((e) => CountryModel.fromJson(e)).toList();
      return Right(cities);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UserModel>> getUserDataFromServer() async {
    try {
      final response = await _apiClient.get(EndPoints.getUserData);
      final user = UserModel.fromJson(response.data['data']);

      // print(await sl<BaseUserLocalDataSource>().getUserToken());
      // await saveUser(CacheUser.fromUserModel(result));
      // final user = CacheUser.fromUserModel(result);
      return Right(user);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, UserModel?>> loginWithGoogle(
  //     {required String accessToken, required RegisterModel registerModel}) async {
  //   try {
  //     // TODO: implement loginWithGoogle
  //     final response = await _apiClient.post(
  //       EndPoints.loginWithGoogle,
  //       parameter: {'access_token': accessToken},
  //       data: registerModel.toJson(),
  //     );
  //     final result = response.data['data'];
  //     await TokenService.setToken(result["token"]);
  //     // print(await sl<BaseUserLocalDataSource>().getUserToken());
  //     // await saveUser(CacheUser.fromUserModel(UserModel.fromJson(result['user'])));
  //     final user = UserModel.fromJson(result['user']);
  //     return Right(user);
  //   } on Exception catch (e) {
  //     print("e $e");
  //     if (e.runtimeType == DioException) {
  //       return left(ServerFailure((e as DioException).response?.data?['data'].toString() ?? ""));
  //     }
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

}
