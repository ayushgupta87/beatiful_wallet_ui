import 'package:flutter/material.dart';
import 'package:flutter_app/data.dart';
import 'package:flutter_app/widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Selected Card',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned.fill(
                            top: 150,
                            bottom: -200,
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  color: Colors.white38,
                                  shape: BoxShape.circle),
                            )),
                        Positioned.fill(
                            left: -300,
                            top: -100,
                            bottom: -100,
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  color: Colors.white38,
                                  shape: BoxShape.circle),
                            )),
                        CardDetials(),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
