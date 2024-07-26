import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  IncomeChart({
    super.key,
  });
  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  var activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(PieChartData(
          pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (p0, pietouchResponse) {
                activeIndex =
                    pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
                setState(() {});
              }),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: [
            PieChartSectionData(
                radius: 20,
                value: 40,
                showTitle: false,
                color: const Color(0xFF208CC8)),
            PieChartSectionData(
                radius: 20,
                value: 25,
                showTitle: false,
                color: const Color(0xFF4EB7F2)),
            PieChartSectionData(
                radius: 20,
                value: 20,
                showTitle: false,
                color: const Color(0xFF064061)),
            PieChartSectionData(
                radius: 20,
                value: 22,
                showTitle: false,
                color: const Color(0xFFE2DECD)),
          ])),
    );
  }
}
