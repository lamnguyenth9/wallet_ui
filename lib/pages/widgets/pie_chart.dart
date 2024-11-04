import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallet_ui/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: customShadow,
        color: primaryColor
      ),
      child: Stack(
        children: [
                CustomPaint(
                  foregroundPainter: PieChartPainter(),
                  child: Container(

                  ),
                ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  shape: BoxShape.circle
                ),
              ),
            )
        ],
      ),
    );
  }
}
class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center =Offset(size.width/2, size.height/2);
      double radius =min(size.width/2, size.height/2);

      var paint=new Paint()..style=PaintingStyle.stroke..strokeWidth=30;

        double total=0;
        category.forEach((e){
          total+=e['amount'];
        });
        var startRadian=-pi/2;

        for(int i=0;i<category.length;i++){
          var currentExpensese=category[i];
          var sweepRadian=(currentExpensese['amount']/total)*2*pi;
          paint.color=pieColors[i];
          canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
          sweepRadian+=sweepRadian; 
        }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return  true;
  }

}