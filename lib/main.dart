import 'package:flutter/material.dart';
import 'package:flutterchart/line_chart_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LineChartExample(),
    );
  }
}
