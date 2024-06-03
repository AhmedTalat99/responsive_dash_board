import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            radius: activeIndex == 0 ? 60 : 50,
            value: 20,
            color: const Color(0xff064060),
            title: activeIndex == 0 ? 'Design service' : '40%',
            titleStyle: AppStyle.styleMedium16
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 2.2 : null,
            radius: activeIndex == 1 ? 60 : 50,
            value: 25,
            color: const Color(0xff4bd7f2),
            title: activeIndex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyle.styleMedium16
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            radius: activeIndex == 2 ? 60 : 50,
            value: 40,
            color: const Color(0xff208bc7),
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyle.styleMedium16
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            color: const Color(0xffe2decd),
            title: activeIndex == 3 ? 'Other' : '22%',
            titleStyle: AppStyle.styleMedium16
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
          ),
        ]);
  }
}
