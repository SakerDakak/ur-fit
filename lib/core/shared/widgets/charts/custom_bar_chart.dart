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
        barGroups: List.generate(
          data.length,
          (i) => BarChartGroupData(
            x: data[i].date.day,
            barRods: [
              BarChartRodData(
                toY: data[i].amountOfWater,
                color: Theme.of(context).colorScheme.primary,
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
