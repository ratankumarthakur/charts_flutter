import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class bar_chart extends StatefulWidget {
  const bar_chart({super.key});

  @override
  State<bar_chart> createState() => _bar_chartState();
}

class _bar_chartState extends State<bar_chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar chart",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: BarChart(
            BarChartData(
              maxY: 100,
                minY: 0,
              borderData: FlBorderData(
                border: const Border(
                  top: BorderSide.none,
                  right: BorderSide.none,
                  left: BorderSide(width: 1,color: Colors.white),
                  bottom: BorderSide(width: 1,color: Colors.white),
                )
              ),
              groupsSpace: 10,
              barGroups: [
                BarChartGroupData(x: 1,barRods: [BarChartRodData(fromY: 0,toY: 10,width: 15,color: Colors.amber)]),
                BarChartGroupData(x: 2,barRods: [BarChartRodData(fromY: 0,toY: 10,width: 15,color: Colors.amber)]),
                BarChartGroupData(x: 3,barRods: [BarChartRodData(fromY: 0,toY: 15,width: 15,color: Colors.amber)]),
                BarChartGroupData(x: 4,barRods: [BarChartRodData(fromY: 0,toY: 20,width: 15,color: Colors.green)]),
                BarChartGroupData(x: 5,barRods: [BarChartRodData(fromY: 0,toY: 10,width: 15,color: Colors.amber)]),
                BarChartGroupData(x: 6,barRods: [BarChartRodData(fromY: 0,toY: 15,width: 15,color: Colors.amber)]),
              ]),
          ),
        ),
      ),
    );
  }
}
