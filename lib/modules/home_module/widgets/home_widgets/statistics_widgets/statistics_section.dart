import 'package:flutter/widgets.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/calories_tracking_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/sleep_tracking_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/steps_stracking_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/training_duration_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/water_tracking.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 240,
      child: Row(
        children: [
          // calories and training duration cards
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(flex: 3, child: CaloriesTrackingCard()),
                SizedBox(height: 12),
                Expanded(flex: 2, child: TrainingDurationCard()),
              ],
            ),
          ),

          SizedBox(width: 8),

          // steps tracking chart
          Expanded(
            flex: 5,
            child: StepsTrackingCard(),
          ),

          SizedBox(width: 8),

          // water and sleep tracking cards
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(flex: 3, child: WaterTracking()),
                SizedBox(height: 12),
                Expanded(flex: 2, child: SleepTrackingCard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
