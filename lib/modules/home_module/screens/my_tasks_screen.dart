import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/shared/widgets/package_progress_exercise.dart';
import 'package:urfit/core/shared/widgets/weak_days_date.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/home_module/widgets/my_tasks_widgets/sections.dart';
import 'package:urfit/modules/home_module/widgets/my_tasks_widgets/tody_statistics_card.dart';

class MyTasksScreen extends StatelessWidget {
  const MyTasksScreen({super.key});
  static const route = '/myTasksScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مهامي'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          // plan remaining time
          const PackageProgressExercise(),

          const SizedBox(height: 16),

          // dates
          const WeakDaysDate(),

          const SizedBox(height: 16),

          // motivational text
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'اتباع المهام اليومية تزيد فرص الوصل ',
                  style: CustomTextStyle.bold_14,
                ),
                TextSpan(
                  text: 'لجسمك المثالى!',
                  style: CustomTextStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // today's statistics card
          Row(
            children: [
              SvgPicture.asset(
                Assets.iconsArrowProgress,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'اليوم',
                style: CustomTextStyle.bold_16,
              ),
            ],
          ),
          const SizedBox(height: 16),

          const TodyStatisticsCard(),

          const SizedBox(height: 16),

          // sections
          Text(
            'الاقسام',
            style: CustomTextStyle.bold_16,
          ),
          const SizedBox(height: 16),
          const Sections(),
        ],
      ),
    );
  }
}
