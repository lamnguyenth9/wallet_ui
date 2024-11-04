import 'package:flutter/material.dart';
import 'package:wallet_ui/data.dart';

import 'pie_chart.dart';

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Expenses",style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: category.map((value)=>Row(
                  children: [
                    CircleAvatar(
                        radius: 5,
                        backgroundColor: pieColors[category.indexOf(value)],
                    ),
                    SizedBox(width: 5,),
                    Text(value['name'])
                  ],
                )).toList()
              ),
            )),
            Expanded(
              flex: 6,
              child: PieChart())
          ],
        ),
      ],
    );
  }
}