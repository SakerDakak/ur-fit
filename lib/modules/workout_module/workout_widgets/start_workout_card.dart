import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

import '../controller/workout_cubit.dart';
import '../data/model/workout_model.dart';
import '../widgets/exercises_item.dart';

class StartWorkoutCard extends StatelessWidget {
  const StartWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkoutCubit>();
    final List<Exercise>? exercises = cubit.getPlanForToday()?.exercises;
    final List<String> bodyParts = [];
    exercises?.forEach((element) {
      if (bodyParts.contains(element.bodyPart)) {
        return;
      } else {
        bodyParts.add(element.bodyPart);
      }
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Row(
          children: [
            SvgPicture.asset(
              Assets.iconsDumbbell,
              width: 16,
              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
            const SizedBox(width: 8),
            Text(
              L10n.tr().exerciseTodayWillFocusOn,
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.fontColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // card
        ...bodyParts.map((bodyPart) => ExercisesItem(
              exercises: exercises
                      ?.where(
                        (element) => element.bodyPart == bodyPart,
                      )
                      .toList() ??
                  [],
            )),
      ],
    );
  }
}
