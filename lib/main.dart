import 'package:flutter/material.dart';
import 'package:flutter_app/data.dart';
import 'package:flutter_app/widgets/cardSection.dart';
import 'package:flutter_app/widgets/expeseSection.dart';
import 'package:flutter_app/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
