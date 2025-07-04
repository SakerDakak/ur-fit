import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';
import '../../../../modules/auth/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import '../../../../modules/auth/personal_info/data/models/user_goals_model.dart';
import '../../../../modules/auth/personal_info/widgets/setup_personal_info/goals_item.dart';
import '../../../../modules/auth/personal_info/widgets/shimmer_widgets/goals_shimmer.dart';
import '../../utils/enums.dart';

class GoalSection extends StatelessWidget {
  final SetupPersonalInfoState state;
  final SetupPersonalInfoCubit cubit;
  final List<UserGoalsModel> goals;
  const GoalSection({super.key, required this.state, required this.cubit, required this.goals});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;
    print("user goals : ${user?.goals}");

    return state.getGoalsState == RequestState.loading ||
        state.getGoalsState == RequestState.failure
        ? const GoalsShimmer()
        : Animate(
      effects: const [FadeEffect()],
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: goals.length,
        itemBuilder: (context, index) => GoalItem(
          onTap: () => cubit.updateSelectedGoals(goals[index]),
          goal: goals[index],
          isSelected: state.userInfo.selectedGaols.contains(goals[index]) || (user != null && user.goals != null &&  user.goals!.any((goal) => goal.id == goals[index].id)),
        ),
      ),
    );
  }

}
