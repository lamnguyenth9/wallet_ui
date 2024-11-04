import 'package:flutter/material.dart';
import 'package:wallet_ui/data.dart';
import 'package:wallet_ui/pages/widgets/expense.dart';

import 'widgets/card_section.dart';
import 'widgets/wallet_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            height:   120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: Expense())
        ],
      ),
    );
  }
}