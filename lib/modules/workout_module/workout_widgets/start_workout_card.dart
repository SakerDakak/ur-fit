import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/error/exceptions.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../../core/routes/routes.dart';
import '../../../generated/locale_keys.g.dart';
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
      if(bodyParts.contains(element.bodyPart)){
        return;
      }else{
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
            SvgPicture.asset(AppAssets.iconsDumbbell, width: 16),
            const SizedBox(width: 8),
            Text(
              LocaleKeys.exerciseTodayWillFocusOn.tr(),
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.fontColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // card
        ...bodyParts.map((bodyPart) => ExercisesItem(exercises: exercises?.where((element) => element.bodyPart == bodyPart,).toList() ?? [],)),

      ],
    );
  }

}
