import 'package:dio/dio.dart';
import 'package:urfit/modules/auth_module/data/models/slider_image_model.dart';
import 'package:urfit/modules/auth_module/data/models/user/user_model.dart';
import 'package:urfit/modules/auth_module/onboarding/model/country/country_model.dart';

import '../../../../../core/api/api_client.dart';
import '../../../../../core/api/endpoints.dart';
import '../../../../../core/api/status_code.dart';
import '../../../../../core/error/exceptions.dart';
import '../models/register_model.dart';

abstract class BaseAuthenticationRemoteDataSource {
  Future<void> signOut();
  Future<void> sendCode({required String email});
  Future<Map<String, dynamic>> login(
      {required String email,
      required String password});
  Future<Map<String, dynamic>> verifyOtpCode(
      {required String email, required String code});
  Future<void> verifyEmailOtpCode(
      {required String code, required verificationId});
  // Future<Map<String, dynamic>> sendSubscriptionInfo({required String token});

  Future<Map<String, dynamic>> forgetPassword(
      {required String email});
  Future<void> resetPassword(
      {required String newPassword,
      required String confirmPassword,
      required String email});
  Future<Map<String, dynamic>> getUserTypes();
  Future<Map<String, dynamic>> register(RegisterModel registerModel);
  Future<Map<String, dynamic>> registerUpdatePhone(
      {required String phone, required String verificationId});
  Future<String> registerResendOtp(
      {required String email});
  Future<Map<String, dynamic>> registerVerifyCode(
      {required String code, required String verificationId});
  Future<List<CountryModel>> getCountries();
  Future<List<CountryModel>> getCities({required int countryId});
  Future<UserModel> getUserData();
  Future<List<SliderImageModel>> getSliderImages();
  Future<Map<String, dynamic>> loginWithGoogle({required String accessToken ,required RegisterModel registerModel});


}

class AuthenticationRemoteDataSource
    extends BaseAuthenticationRemoteDataSource {
  final DioServices dioServices;
  // final FirebaseAuth auth;
  AuthenticationRemoteDataSource(
    this.dioServices,
  );


  @override
  Future<void> signOut() async {
    await dioServices.post(EndPoints.logout);
  }

  @override
  Future<Map<String, dynamic>> login(
      {required String email,
      required String password}) async {
    final response = await dioServices.post(
      EndPoints.login,
      data: {
        'email': email,
        'password': password,
      },
    );
    print(response.data);
    return response.data['data'];
  }

  @override
  Future<void> sendCode({required String email}) async {
    final response =
        await dioServices.post(EndPoints.sendEmailActivationCode, data: {
      'email': email,
    });
  }

  @override
  Future<Map<String, dynamic>> verifyOtpCode(
      {required String email, required String code}) async {
    final response = await dioServices.post(EndPoints.verifyOtpCode, data: {
      'email': email,
      'otpCode': code,
    });

    return response.data;
  }



  @override
  Future<Map<String, dynamic>> forgetPassword(
      {required String email}) async {
    try {
      final response = await dioServices.post(EndPoints.forgetPassword, data: {
        'email': email,
      });
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> verifyEmailOtpCode(
      {required String code, required verificationId}) async {
    final response = await dioServices.post(EndPoints.verifyEmailCode, data: {
      'code': code,
      '2fa': verificationId,
      'token_for': "mobile",
    });
    print("verifiy otp code : ${response.data}");
  }

  @override
  Future<void> resetPassword(
      {required String newPassword,
      required String confirmPassword,
      required String email}) async {
    final response =
        await dioServices.post(EndPoints.setNewPassword, data: {
      'password': newPassword,
      'password_confirmation': confirmPassword,
      'email': email,
    });
    print("verifiy otp code : ${response.data}");
    // return response.data;
  }

  @override
  Future<Map<String, dynamic>> getUserTypes() async {
    final response = await dioServices.get(EndPoints.getUserTypes);
    print(response.data);
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> register(RegisterModel registerModel) async {
    print("models :${registerModel.toJson()}");
    final response = await dioServices.post(EndPoints.register,
        data: registerModel.toJson());
    print("register response : ${response.data}");

    return response.data['data'];
  }

  @override
  Future<String> registerResendOtp(
      {required String email}) async {
    final response = await dioServices.post(EndPoints.registerResendOtp,
        data: {'email': email});
    print("registerResendOtp response : ${response.data}");

    return response.data['status'];
  }

  @override
  Future<Map<String, dynamic>> registerUpdatePhone(
      {required String phone, required String verificationId}) async {
    final response = await dioServices.post(EndPoints.registerUpdatePhone,
        data: {'2fa': verificationId, 'phone': phone});
    print("registerUpdatePhone response : ${response.data}");

    return response.data;
  }

  @override
  Future<Map<String, dynamic>> registerVerifyCode(
      {required String code, required String verificationId}) async {
    final response = await dioServices.post(EndPoints.registerVerifyPhone,
        data: {'2fa': verificationId, 'code': code, 'token_for': "mobile-app"});
    print("registerVerifyCode response : ${response.data}");

    return response.data;
  }

  @override
  Future<List<CountryModel>> getCountries() async {
    final response = await dioServices.get(EndPoints.countries);

    return (response.data['data'] as List)
        .map((e) => CountryModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<CountryModel>> getCities({required int countryId}) async {
    final response = await dioServices.get(EndPoints.cities,parameter: {'country_id' : countryId});

    return (response.data['data'] as List)
        .map((e) => CountryModel.fromJson(e))
        .toList();
  }

  @override
  Future<UserModel> getUserData() async {
    final response = await dioServices.get(
      EndPoints.getUserData,);
    print(response.data);
    return UserModel.fromJson(response.data['data']);
  }

  @override
  Future<List<SliderImageModel>> getSliderImages() async {
    final response = await dioServices.get(
      EndPoints.getSliderImages,);
    print(response.data);
    return (response.data['data'] as List).map((e) => SliderImageModel.fromJson(e)).toList();
  }

  @override
  Future<Map<String, dynamic>> loginWithGoogle({required String accessToken ,required RegisterModel registerModel}) async {
    // TODO: implement loginWithGoogle
    final response = await dioServices.post(
      EndPoints.loginWithGoogle,
      parameter: {
        'access_token': accessToken,
      },
      data: registerModel.toJson(),
    );
    print(response.data);
    return response.data['data'];
  }

  // @override
  // Future<void> upDateUserData(Map<String,dynamic> data) async {
  //   final result =await dioServices.update(EndPoints.updateProfile,data: data);
  //   print("result : $result");
  //   // return UserModel.fromJson(result.data['data']);
  // }
}
