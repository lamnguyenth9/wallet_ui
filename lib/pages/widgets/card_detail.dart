import 'package:flutter/material.dart';
import 'package:wallet_ui/data.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 250, child: Image.asset("assets/mastercardlogo.png")),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("**** **** ****",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text(
                      "2002",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text("PLATIMUM CARD",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
