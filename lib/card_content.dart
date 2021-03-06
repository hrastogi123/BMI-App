import 'package:flutter/material.dart';
import 'constant.dart';

class CardContent extends StatelessWidget {
  CardContent({this.icons, this.lable});

  final IconData icons;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 65,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: lableTextStyle,
        )
      ],
    );
  }
}