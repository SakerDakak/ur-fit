import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CountryModel with _$CountryModel {
  factory CountryModel({
    required int id,
    required String name,
    required int is_active,
    required String created_at,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}