import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/presentation/utils/enums.dart';

part 'user_goals_model.freezed.dart';
part 'user_goals_model.g.dart';

@freezed
class UserGoalsModel with _$UserGoalsModel {
  const factory UserGoalsModel({
    required int id,
    required String name,
    required String imageUrl,
    GoalsSectionTwoEnum? sectionTwoType,
    GoalsSectionOneEnum? sectionOneType,
  }) = _GoalsSectionOneModel;

  factory UserGoalsModel.fromJson(Map<String, dynamic> json) =>
      _$UserGoalsModelFromJson(json);
}
