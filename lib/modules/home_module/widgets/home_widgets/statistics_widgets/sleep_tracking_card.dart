import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/data/services/health_local_service.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/edit_health_value_dialog.dart';

import '../../../controller/cubit/health_cubit.dart';

class SleepTrackingCard extends StatelessWidget {
  const SleepTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        return GestureDetector(
          onTap: () async {
            final healthCubit = context.read<HealthCubit>();
            final healthData = healthCubit.state.healthData;
            
            // الحصول على القيمة الأصلية من Health Connect (بالدقائق)
            final originalValue = healthCubit.getTodayOriginalSleep(healthData).toDouble();
            
            // الحصول على القيمة الحالية (مع التعديلات) من state (بالدقائق)
            final now = DateTime.now();
            final adjustment = HealthLocalService.getSleepAdjustment(now);
            final currentValue = originalValue + adjustment;
            
            final result = await showDialog<bool>(
              context: context,
              builder: (context) => EditHealthValueDialog(
                type: HealthValueType.sleep,
                currentValue: currentValue,
                originalValue: originalValue,
              ),
            );
            
            if (result == true) {
              // إعادة بناء الويدجت لتحديث القيمة
              (context as Element).markNeedsBuild();
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Co.cardColor,
              borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              border: Border.all(color: Co.strockColor),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        Assets.iconsBed,
                        width: 16,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        L10n.tr().sleep,
                        style: TStyle.regular_14.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Co.fontColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Builder(
                    builder: (context) {
                      final healthCubit = context.watch<HealthCubit>();
                      final healthData = healthCubit.state.healthData;
                      
                      // حساب القيمة مع التعديلات مباشرة (بالدقائق)
                      final originalValue = healthCubit.getTodayOriginalSleep(healthData).toDouble();
                      final now = DateTime.now();
                      final adjustment = HealthLocalService.getSleepAdjustment(now);
                      final totalSleep = originalValue + adjustment;
                      
                      // تحويل الدقائق إلى ساعات
                      final sleepHours = (totalSleep / 60).toStringAsFixed(1);
                      
                      return Text(
                        '$sleepHours\n${L10n.tr().hours}',
                        textAlign: TextAlign.center,
                        style: TStyle.regular_14.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Co.fontColor,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
