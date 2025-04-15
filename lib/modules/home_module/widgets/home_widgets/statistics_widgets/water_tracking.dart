import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/core/shared/widgets/charts/custom_bar_chart.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';

class WaterTracking extends StatelessWidget {
  const WaterTracking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        children: [
          Text(
            LocaleKeys.water.tr(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.regular_14.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child:
                BlocSelector<HealthCubit, HealthState, List<HealthDataPoint>>(
              selector: (state) => state.healthData,
              builder: (context, healthData) {
                return CustomBarChart(
                  data: [
                    ...healthData
                        .where(
                            (element) => element.type == HealthDataType.WATER)
                        .map((e) {
                      final index = healthData.indexOf(e);
                      return WaterChartData(
                        amountOfWater: double.tryParse(e.value
                                .toString()
                                .split("numericValue: ")
                                .last) ??
                            0,
                        date: DateTime.now().subtract(Duration(days: index)),
                      );
                    }),
                    if (healthData
                        .where(
                            (element) => element.type == HealthDataType.WATER)
                        .isEmpty)
                      ...List.generate(
                          6,
                          (index) => WaterChartData(
                                amountOfWater: 1,
                                date: DateTime.now()
                                    .subtract(Duration(days: index)),
                              )),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          BlocSelector<HealthCubit, HealthState, num>(
            selector: (state) => state.totalLitreOfWater,
            builder: (context, water) {
              return Text(
                '${water} ${LocaleKeys.litre.tr()}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.fontColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
