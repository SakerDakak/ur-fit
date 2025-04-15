import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_history_model.freezed.dart';
part 'plan_history_model.g.dart';

@freezed
class PlanHistoryModel with _$PlanHistoryModel {
  const factory PlanHistoryModel({
    required Package? package,
    required SubscriptionData? subscription_data,
    required num? user_target_weight,

    required MealPlans mealPlans,
    required ExercisePlans exercisePlans,
    required ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
    required ExpectedResultOfMealPlans? expectedResultOfMealPlans,
  }) = _PlanHistoryModel;

  factory PlanHistoryModel.fromJson(Map<String, dynamic> json) => _$PlanHistoryModelFromJson(json);
}

@freezed
class Package with _$Package {
  const factory Package({
    required int id,
    required String name,
    required String description,
    required int duration,
    required String price,
    required String type,
    required int? is_active,
    required String image,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);
}

@freezed
class SubscriptionData with _$SubscriptionData {
  const factory SubscriptionData({
    required int id,
    required int? user_id,
    required int package_id,
    required String start_date,
    required String end_date,
    required String created_at,
    required String updated_at,
  }) = _SubscriptionData;

  factory SubscriptionData.fromJson(Map<String, dynamic> json) => _$SubscriptionDataFromJson(json);
}

@freezed
class MealPlans with _$MealPlans {
  const factory MealPlans({
    required num calories,
    required num protein,
    required num carbs,
  }) = _MealPlans;

  factory MealPlans.fromJson(Map<String, dynamic> json) => _$MealPlansFromJson(json);
}

@freezed
class ExercisePlans with _$ExercisePlans {
  const factory ExercisePlans({
    required num calories,
    required num sets,
    required num times,
  }) = _ExercisePlans;

  factory ExercisePlans.fromJson(Map<String, dynamic> json) => _$ExercisePlansFromJson(json);
}

@freezed
class ExpectedResultOfExercisePlans with _$ExpectedResultOfExercisePlans {
  const factory ExpectedResultOfExercisePlans({
    required num calories,
    required num sets,
    required num times,
  }) = _ExpectedResultOfExercisePlans;

  factory ExpectedResultOfExercisePlans.fromJson(Map<String, dynamic> json) => _$ExpectedResultOfExercisePlansFromJson(json);
}

@freezed
class ExpectedResultOfMealPlans with _$ExpectedResultOfMealPlans {
  const factory ExpectedResultOfMealPlans({
    required num calories,
    required num protein,
    required num fat,
  }) = _ExpectedResultOfMealPlans;

  factory ExpectedResultOfMealPlans.fromJson(Map<String, dynamic> json) => _$ExpectedResultOfMealPlansFromJson(json);
}

// Run `flutter pub run build_runner build` to generate the necessary files!
