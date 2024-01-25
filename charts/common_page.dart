import 'package:flutter/material.dart';
import 'package:local_database/charts/bar_chart.dart';
import 'package:local_database/charts/pie_chart.dart';

import 'line_chart.dart';

class common_page extends StatefulWidget {
  const common_page({super.key});

  @override
  State<common_page> createState() => _common_pageState();
}

class _common_pageState extends State<common_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charts"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>bar_chart()));
        }, child: Text("Bar chart")),SizedBox(height: 10,),

        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>line_chart()));
        }, child: Text("Line chart")),SizedBox(height: 10,),

        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>pie_chart()));
        }, child: Text("Pie chart")),SizedBox(height: 10,),
      ],),
    );
  }
}
