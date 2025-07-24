class RegisterRequest {
  final String? name;
  final String? email;
  final int? countryId;
  final int? cityId;
  final String? password;
  final String? passwordConfirmation;
  final String? fcm;

  RegisterRequest({
    this.name,
    this.email,
    this.countryId,
    this.cityId,
    this.password,
    this.passwordConfirmation,
    this.fcm,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'country_id': countryId,
      'city_id': cityId,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'fcm_token': fcm,
    };
  }
}
