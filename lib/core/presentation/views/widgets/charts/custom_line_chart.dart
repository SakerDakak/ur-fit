import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/style/colors.dart';

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
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((touchedSpot) {
                // عرض القيمة الحقيقية مع منزلة عشرية
                final realValue = touchedSpot.y;
                return LineTooltipItem(
                  realValue.toStringAsFixed(1),
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            color: Theme.of(context).colorScheme.primary,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                // عرض نقطة للقيم الصفرية بلون مختلف
                if (spot.y == 0) {
                  return FlDotCirclePainter(
                    radius: 3,
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.5),
                    strokeWidth: 2,
                    strokeColor: Theme.of(context).colorScheme.primary,
                  );
                }
                return FlDotCirclePainter(
                  radius: 4,
                  color: Theme.of(context).colorScheme.primary,
                  strokeWidth: 2,
                  strokeColor: Co.whiteColor,
                );
              },
            ),
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
                  Co.whiteColor.withValues(alpha: 0.8),
                  Co.whiteColor.withValues(alpha: 0.5),
                  Co.whiteColor.withValues(alpha: 0),
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
