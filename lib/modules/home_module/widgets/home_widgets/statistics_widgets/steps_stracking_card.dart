
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/charts/custom_line_chart.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';

import 'package:urfit/core/presentation/localization/l10n.dart';


class StepsTrackingCard extends StatelessWidget {
  const StepsTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                L10n.tr().steps,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // chart
          Expanded(
            child:
                BlocSelector<HealthCubit, HealthState, List<HealthDataPoint>>(
              selector: (state) => state.healthData,
              builder: (context, healthData) {
                return CustomLineChart(
                  spots: [
                    ...healthData
                        .where(
                            (element) => element.type == HealthDataType.STEPS)
                        .map((e) {
                      final index = healthData.indexOf(e);
                      return FlSpot(
                        index.toDouble(),
                        double.tryParse(e.value
                                .toString()
                                .split("numericValue: ")
                                .last) ??
                            10,
                      );
                    }),
                    if (healthData.where((element) => element.type == HealthDataType.STEPS).isEmpty)
                      ...List.generate(
                          6, (index) => FlSpot(index.toDouble(), 6)),
                  ],
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          // steps count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocSelector<HealthCubit, HealthState, int>(
              selector: (state) => state.totalSteps,
              builder: (context, steps) {
                return Text(
                  '${steps} ${L10n.tr().step}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.fontColor,
                  ),
                );
              },
            ),
          ),

          // distance
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocSelector<HealthCubit, HealthState, int>(
              selector: (state) => state.distanceInMeters,
              builder: (context, distance) {
                return Text(
                  '${(distance / 1000).toStringAsFixed(1)} ${L10n.tr().km}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
