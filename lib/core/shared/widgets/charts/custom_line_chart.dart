import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:urfit/core/style/colors.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
    required this.spots,
  });

  final List<FlSpot> spots;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(show: false),
        gridData: const FlGridData(show: false),
        lineBarsData: [
          LineChartBarData(color: Theme.of(context).colorScheme.primary,
            dotData: const FlDotData(show: false),
            isCurved: true,
            preventCurveOverShooting: true,
            barWidth: 4,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.whiteColor.withOpacity(0.8),
                  AppColors.whiteColor.withOpacity(0.5),
                  AppColors.whiteColor.withOpacity(0),
                ],
              ),
            ),
            spots: List.generate(spots.length, (i) => spots[i]),
          ),
        ],
      ),
    );
  }
}
