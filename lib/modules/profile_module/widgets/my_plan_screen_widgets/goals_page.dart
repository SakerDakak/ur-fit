import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/profile_module/cubit/update_user_info_cubit.dart';
import 'package:urfit/modules/profile_module/cubit/update_user_info_state.dart';

import '../../../../core/presentation/views/widgets/goal_section.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UpdateUserInfoCubit>().getGoals();

    final cubit = context.read<UpdateUserInfoCubit>();
    return BlocBuilder<UpdateUserInfoCubit, UpdateUserInfoState>(
      buildWhen: (p, c) =>
          (p.userInfo.selectedGaols != c.userInfo.selectedGaols) || (p.getGoalsState != c.getGoalsState),
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
          children: [
            // title
            Text(
              L10n.tr().whatIsyourGoals,
              style: TStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 8),

            // goals section one
            Text(
              L10n.tr().sectionOne,
              style: TStyle.semiBold_14,
            ),
            const SizedBox(height: 16),

            // section one goals
            GoalSection(
                selectedGoals: state.userInfo.selectedGaols.map((e) => e.id).toSet(),
                onTap: (p0) => null, // cubit.selectGoal(p0),
                // showLoader:
                //     false,  state.getGoalsState == RequestState.loading || state.getGoalsState == RequestState.failure,
                goals: state.goals.take(2).toList()),

            const SizedBox(height: 16),

            // goals section two
            Text(
              L10n.tr().sectionTwo,
              style: TStyle.semiBold_16,
            ),

            const SizedBox(height: 20),

            GoalSection(
                selectedGoals: state.userInfo.selectedGaols.map((e) => e.id).toSet(),
                onTap: (p0) => null, // cubit.selectGoal(p0),
                // showLoader:
                //     false, // state.getGoalsState == RequestState.loading || state.getGoalsState == RequestState.failure,
                goals: state.goals.skip(2).toList()),

            // continue button
            CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed: () => cubit.goToNextPage(),
            ),

            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class _GoalItem extends StatelessWidget {
  const _GoalItem({
    required this.goal,
    required this.isSelected,
    required this.onTap,
  });

  final UserGoalsModel goal;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Co.cardColor,
          borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          border: Border.all(color: Co.strockColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            // workout image
            PositionedDirectional(
              top: -10,
              start: -5,
              bottom: -10,
              child: _goalImage(context),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 88),

                  // meal name
                  Expanded(
                    child: Text(
                      goal.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TStyle.bold_16.copyWith(shadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ]),
                    ),
                  ),

                  // radio button
                  Radio(
                    toggleable: true,
                    value: isSelected,
                    groupValue: true,
                    onChanged: (value) {
                      onTap();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _goalImage(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xff484848),
        ),
        const CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xff575757),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).colorScheme.primary,
          backgroundImage: CachedNetworkImageProvider(goal.imageUrl),
        ),
      ],
    );
  }
}
