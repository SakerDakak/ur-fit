import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    super.key,
    required this.data,
  });

  final List<WaterChartData> data;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: const FlTitlesData(show: false),
        alignment: BarChartAlignment.center,
        borderData: FlBorderData(show: false),
        gridData: const FlGridData(show: false),
        groupsSpace: 4,
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              // عرض القيمة الحقيقية مع منزلة عشرية
              final realValue = data[groupIndex].amountOfWater;
              return BarTooltipItem(
                realValue.toStringAsFixed(1),
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ),
        barGroups: List.generate(
          data.length,
          (i) => BarChartGroupData(
            x: data[i].date.day,
            barRods: [
              BarChartRodData(
                toY: data[i].amountOfWater > 0
                    ? data[i].amountOfWater
                    : 0.01, // عرض 0.01 للقيم الصفرية
                color: data[i].amountOfWater > 0
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.3), // لون شفاف للقيم الصفرية
                borderRadius: BorderRadius.circular(8),
                width: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaterChartData {
  final double amountOfWater;
  final DateTime date;

  const WaterChartData({
    required this.amountOfWater,
    required this.date,
  });
}
