
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/charts/custom_bar_chart.dart';
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
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: Co.strockColor),
      ),
      child: Column(
        children: [
          Text(
            L10n.tr().water,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TStyle.regular_14.copyWith(
              fontWeight: FontWeight.w700,
              color: Co.whiteColor,
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
                '${water} ${L10n.tr().litre}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Co.fontColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
