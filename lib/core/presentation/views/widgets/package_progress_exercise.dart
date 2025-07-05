import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

class PackageProgressExercise extends StatelessWidget {
  const PackageProgressExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        final weekNum = state.allPlans.length;
        final workoutPlan = context.read<WorkoutCubit>().getCurrentWorkOutPlan();

        String weekText() {
          switch (weekNum) {
            case 1:
              return L10n.tr().week1;
            case 2:
              return L10n.tr().week2;
            case 3:
              return L10n.tr().week3;
            default:
              return L10n.tr().week4;
          }
        }

        return Column(
          children: [
            // weak number and end date
            Row(
              children: [
                SvgPicture.asset(
                  Assets.iconsCalender,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    weekText(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Co.whiteColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${L10n.tr().packageEndsIn}${workoutPlan?.endDate}',
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Co.whiteColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // progress bar
            LinearPercentIndicator(
              percent: weekNum / 4,
              padding: EdgeInsets.zero,
              progressColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Co.whiteColor,
              barRadius: const Radius.circular(10),
              isRTL: L10n.isAr(context),
              animation: true,
              animateFromLastPercent: true,
              animationDuration: 1000,
            ),
          ],
        );
      },
    );
  }
}
