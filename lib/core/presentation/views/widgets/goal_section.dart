import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:urfit/core/domain/error/session.dart';

import '../../../../modules/personal_info/data/models/user_goals_model.dart';
import '../../../../modules/personal_info/screens/widgets/setup_personal_info/goals_item.dart';
import '../../../../modules/personal_info/screens/widgets/shimmer_widgets/goals_shimmer.dart';

class GoalSection extends StatelessWidget {
  final bool showLoader;
  final Function(UserGoalsModel) onTap;
  final List<UserGoalsModel> selectedGoals;
  final List<UserGoalsModel> goals;
  const GoalSection(
      {super.key, required this.goals, required this.showLoader, required this.onTap, required this.selectedGoals});

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    // print("user goals : ${user?.goals}");

    // return state.getGoalsState == RequestState.loading ||
    //     state.getGoalsState == RequestState.failure

    return showLoader
        ? const GoalsShimmer()
        : Animate(
            effects: const [FadeEffect()],
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: goals.length,
              itemBuilder: (context, index) => GoalItem(
                onTap: () => onTap(goals[index]),
                goal: goals[index],
                isSelected: selectedGoals.contains(goals[index]) ||
                    (user != null && user.goals != null && user.goals!.any((goal) => goal.id == goals[index].id)),
              ),
            ),
          );
  }
}
