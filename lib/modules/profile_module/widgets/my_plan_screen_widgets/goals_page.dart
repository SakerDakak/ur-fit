import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/user_goals_model.dart';

import '../../../../core/shared/widgets/goal_section.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SetupPersonalInfoCubit>().getGoals();

    final cubit = context.read<SetupPersonalInfoCubit>();
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          (p.userInfo.selectedGaols != c.userInfo.selectedGaols) ||
          (p.getGoalsState != c.getGoalsState),
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          children: [
            // title
            Text(
              LocaleKeys.whatIsyourGoals.tr(),
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 8),

            // goals section one
            Text(
              LocaleKeys.sectionOne.tr(),
              style: CustomTextStyle.semiBold_14,
            ),
            const SizedBox(height: 16),

            // section one goals
            GoalSection(
                state: state,
                cubit: cubit,
                goals: state.goals.take(2).toList()),

            const SizedBox(height: 16),

            // goals section two
            Text(
              LocaleKeys.sectionTwo.tr(),
              style: CustomTextStyle.semiBold_16,
            ),

            const SizedBox(height: 20),

            GoalSection(
                state: state,
                cubit: cubit,
                goals: state.goals.skip(2).toList()),

            // continue button
            CustomElevatedButton(
              text: LocaleKeys.continuee.tr(),
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
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: Border.all(color: AppColors.strockColor),
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
                      style: CustomTextStyle.bold_16.copyWith(shadows: [
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
