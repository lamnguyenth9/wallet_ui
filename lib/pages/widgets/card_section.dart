import 'package:flutter/material.dart';
import 'package:wallet_ui/data.dart';

import 'card_detail.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text("Card Selected",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        ),
        Expanded(child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  
                  Positioned.fill(
                   // left: -300,
                     top:150,
                    bottom: -200,
                    child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.white38,
                      boxShadow: customShadow
                    ),
                  )),
                  Positioned.fill(
                    left: -300,
                     top:-100,
                    bottom: -100,
                    child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.white38,
                      boxShadow: customShadow
                    ),
                  )),
                  CardDetail()
                ],
              ),
            );
          },))
      ],
    );
  }
}