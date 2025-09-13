import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/home_module/widgets/my_tasks_widgets/nutrition_and_calories.dart';
import 'package:urfit/modules/home_module/widgets/my_tasks_widgets/sleep_water_training_statistics.dart';
import 'package:urfit/modules/home_module/widgets/my_tasks_widgets/stacked_circular_progress_bar.dart';

class TodyStatisticsCard extends StatelessWidget {
  const TodyStatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: Co.strockColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: LayoutBuilder(builder: (context, c) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            // circular progress bar
            const PositionedDirectional(
              top: -20,
              start: -8,
              child: StackedCircularProgressBar(),
            ),

            // content
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  // Nutrition
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: SizedBox(
                      width: c.maxWidth * 0.42,
                      child: const NutritionAndBurnedCalories(),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // bottom row (training, water and sleep tracing)
                  const SleepWaterTrainingStatistics(),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
