import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class pie_chart extends StatefulWidget {
  const pie_chart({super.key});

  @override
  State<pie_chart> createState() => _pie_chartState();
}

class _pie_chartState extends State<pie_chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pie chart"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
          child: PieChart(
            PieChartData(
              centerSpaceRadius:5,
              borderData: FlBorderData(show: false),
              sectionsSpace: 2,
              sections: [
                PieChartSectionData(value: 35,color: Colors.purple,radius: 100),
                PieChartSectionData(value: 40,color: Colors.amber,radius: 100),
                PieChartSectionData(value: 55,color: Colors.green,radius: 100),
                PieChartSectionData(value: 70,color: Colors.orange,radius: 100),
                PieChartSectionData(value: 40,color: Colors.amber,radius: 100),
                PieChartSectionData(value: 55,color: Colors.green,radius: 100),

              ]
            )
          ),
        ),
      ),
    );
  }
}
