import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
class line_chart extends StatefulWidget {
  const line_chart({super.key});

  @override
  State<line_chart> createState() => _line_chartState();
}

class _line_chartState extends State<line_chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Line chart"),
        centerTitle: true,
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: LineChart(LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: const[
                FlSpot(0,3),
                FlSpot(2.6,2),
                FlSpot(4.9,5),
                FlSpot(6.8,2.5),
                FlSpot(8,4),
                FlSpot(9.5,3),
                FlSpot(11,4),
              ],
              isCurved: true,
              dotData: FlDotData(show: true),
              color: Colors.blue,
              barWidth: 5,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.green.withOpacity(.7),
              )
            )
          ],
          minX: 0,
          maxX: 11,
          minY: 2,
          maxY: 5,
          backgroundColor: Colors.black38,
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              axisNameWidget: const Text("X axis"),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 3,
                getTitlesWidget: (value,meta){
                  String text="";
                  switch(value.toInt()){
                    case 0:
                      text="Monday";
                      break;
                    case 6:
                      text="Thursday";
                      break;
                    case 9:
                    text="Sunday";
                    break;
                  }
                  return Text(text);
                }
              )
            ),
            leftTitles: AxisTitles(
              axisNameWidget: const Text("Y axis"),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
              )
            )
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            getDrawingHorizontalLine: (value)=>FlLine(
              color: Colors.greenAccent,
              strokeWidth: .5
            ),
            drawVerticalLine: true,
            getDrawingVerticalLine: (value)=>FlLine(
              color: Colors.amberAccent,
              strokeWidth: .5
            )
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: Colors.red,
              width: 5
            )
          )
        )),
      ),
    );
  }
}
