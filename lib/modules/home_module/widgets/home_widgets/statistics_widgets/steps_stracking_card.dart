import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/charts/custom_line_chart.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';

class StepsTrackingCard extends StatelessWidget {
  const StepsTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        return Container(
          clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Co.cardColor,
            borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
            border: Border.all(color: Co.strockColor),
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
                    style: TStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Co.whiteColor,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // chart
              Expanded(
                child: BlocSelector<HealthCubit, HealthState,
                    List<HealthDataPoint>>(
                  selector: (state) => state.healthData,
                  builder: (context, healthData) {
                    // إنشاء بيانات لـ 7 أيام مع عرض القيمة 0 للأيام التي لم يسجل بها خطوات
                    final stepsData = healthData
                        .where(
                            (element) => element.type == HealthDataType.STEPS)
                        .toList();

                    // إنشاء خريطة للبيانات الموجودة حسب التاريخ
                    final Map<String, double> stepsByDate = {};
                    for (final data in stepsData) {
                      final dateKey =
                          '${data.dateFrom.year}-${data.dateFrom.month}-${data.dateFrom.day}';
                      final stepsAmount = double.tryParse(data.value
                              .toString()
                              .split("numericValue: ")
                              .last) ??
                          0;
                      stepsByDate[dateKey] = stepsAmount;
                    }

                    // إنشاء بيانات لـ 7 أيام (من اليوم الحالي إلى 6 أيام سابقة)
                    // ترتيب البيانات من الأقدم إلى الأحدث للعرض الصحيح
                    final chartSpots = List.generate(7, (index) {
                      final date =
                          DateTime.now().subtract(Duration(days: 6 - index));
                      final dateKey = '${date.year}-${date.month}-${date.day}';
                      final stepsAmount = stepsByDate[dateKey] ?? 0.0;

                      return FlSpot(index.toDouble(), stepsAmount);
                    });

                    // التحقق من وجود بيانات للعرض
                    if (stepsData.isEmpty) {
                      return Center(
                        child: Text(
                          'لا توجد بيانات خطوات متاحة',
                          style: TStyle.regular_12.copyWith(
                            color: Co.fontColor,
                          ),
                        ),
                      );
                    }

                    return CustomLineChart(spots: chartSpots);
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
                      '$steps ${L10n.tr().step}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TStyle.regular_14.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Co.fontColor,
                      ),
                    );
                  },
                ),
              ),

              // distance calculated from steps
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocSelector<HealthCubit, HealthState, int>(
                  selector: (state) => state.totalSteps,
                  builder: (context, steps) {
                    // حساب المسافة من عدد الخطوات (متوسط طول الخطوة 0.7 متر)
                    const double averageStepLength = 0.7; // متر
                    final double distanceInKm =
                        (steps * averageStepLength) / 1000;

                    return Text(
                      '${distanceInKm.toStringAsFixed(1)} ${L10n.tr().km}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TStyle.regular_14.copyWith(
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
      },
    );
  }
}
