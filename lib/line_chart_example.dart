import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartExampleState();
}

class LineChartExampleState extends State<LineChartExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Line Chart"),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: LineChart(
              LineChartData(
                titlesData: FlTitlesData(
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 2:
                          return 'SEP';
                        case 7:
                          return 'OCT';
                        case 12:
                          return 'NOV';
                      }
                      return '';
                    },
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 1:
                          return '1m';
                        case 2:
                          return '2m';
                        case 3:
                          return '3m';
                        case 4:
                          return '4m';
                      }
                      return '';
                    },
                  ),
                ),
                minX: 0,
                maxX: 14,
                minY: 0,
                maxY: 4,
                lineBarsData: _linesBarChart(),
              ),
            ),
          ),
        ],
      )),
    );
  }

  List<LineChartBarData> _linesBarChart() {
    LineChartBarData lineChartBarChartData = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
    );
    return [
      lineChartBarChartData,
    ];
  }
}
