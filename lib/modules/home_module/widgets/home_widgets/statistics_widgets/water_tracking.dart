import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
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
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
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
                child: BlocSelector<HealthCubit, HealthState,
                    List<HealthDataPoint>>(
                  selector: (state) => state.healthData,
                  builder: (context, healthData) {
                    // إنشاء بيانات لـ 7 أيام مع عرض القيمة 0 للأيام التي لم يشرب بها
                    final waterData = healthData
                        .where(
                            (element) => element.type == HealthDataType.WATER)
                        .toList();

                    // إنشاء خريطة للبيانات الموجودة حسب التاريخ
                    final Map<String, double> waterByDate = {};
                    for (final data in waterData) {
                      final dateKey =
                          '${data.dateFrom.year}-${data.dateFrom.month}-${data.dateFrom.day}';
                      final waterAmount = double.tryParse(data.value
                              .toString()
                              .split("numericValue: ")
                              .last) ??
                          0;
                      waterByDate[dateKey] = waterAmount;
                    }

                    // إنشاء بيانات لـ 7 أيام (من اليوم الحالي إلى 6 أيام سابقة)
                    // ترتيب البيانات من الأقدم إلى الأحدث للعرض الصحيح
                    final chartData = List.generate(7, (index) {
                      final date =
                          DateTime.now().subtract(Duration(days: 6 - index));
                      final dateKey = '${date.year}-${date.month}-${date.day}';
                      final waterAmount = waterByDate[dateKey] ?? 0.0;

                      return WaterChartData(
                        amountOfWater: waterAmount,
                        date: date,
                      );
                    });

                    // التحقق من وجود بيانات للعرض
                    if (waterData.isEmpty) {
                      return Center(
                        child: Text(
                          'لا توجد بيانات مياه متاحة',
                          style: TStyle.regular_12.copyWith(
                            color: Co.fontColor,
                          ),
                        ),
                      );
                    }

                    return CustomBarChart(data: chartData);
                  },
                ),
              ),
              const SizedBox(height: 8),
              BlocSelector<HealthCubit, HealthState, List<HealthDataPoint>>(
                selector: (state) => state.healthData,
                builder: (context, healthData) {
                  // حساب كمية المياه لليوم الحالي فقط
                  final today = DateTime.now();
                  final todayKey = '${today.year}-${today.month}-${today.day}';

                  final waterData = healthData
                      .where((element) => element.type == HealthDataType.WATER)
                      .toList();

                  // حساب مجموع المياه لليوم الحالي
                  double todayWaterAmount = 0.0;
                  for (final data in waterData) {
                    final dateKey =
                        '${data.dateFrom.year}-${data.dateFrom.month}-${data.dateFrom.day}';
                    if (dateKey == todayKey) {
                      final waterAmount = double.tryParse(data.value
                              .toString()
                              .split("numericValue: ")
                              .last) ??
                          0;
                      todayWaterAmount += waterAmount;
                    }
                  }

                  return Text(
                    '${todayWaterAmount.toStringAsFixed(1)} ${L10n.tr().litre}',
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
      },
    );
  }
}
