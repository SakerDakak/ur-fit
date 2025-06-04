import 'package:freezed_annotation/freezed_annotation.dart';

part 'no_of_daily_meals.freezed.dart';
part 'no_of_daily_meals.g.dart';

@freezed
class NoOfDailyMealsModel with _$NoOfDailyMealsModel {
  const factory NoOfDailyMealsModel({
    required String value,
    required String label,
    String? image,

  }) = _NoOfDailyMealsModel;

  factory NoOfDailyMealsModel.fromJson(Map<String, dynamic> json) =>
      _$NoOfDailyMealsModelFromJson(json);
}