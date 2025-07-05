import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';

part 'user_personal_info_model.freezed.dart';
part 'user_personal_info_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserPersonalInfoModel with _$UserPersonalInfoModel {
  factory UserPersonalInfoModel({
    GenderEnum? gender,
    int? age,
    double? height,
    double? current_weight,
    required List<UserGoalsModel> selectedGaols,
    double? targetWeight,
    int? diet_id,
    @Default([]) List<int> likedMealsIds,
    @Default([]) List<int> notLikedMealsIds,
    int? mealsVariantsId,
    @Default([]) List<int> workoutTypesIds,
    @Default([]) List<String> muscleFocusIds,
    @Default([]) List<String> exciseDays,
    @Default([]) List<int> equipmentsIds,

    String? numOfDailyMeals,
    int? mealVarietyLevel,
    int? weaklyTrainingCount,
  }) = _UserPersonalInfoModel;

  factory UserPersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalInfoModelFromJson(json);
}
