import 'package:bmi_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'resuable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  final String bmiResult;
 final String resultText;
 final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                'Your Result',
                style: numberTextStyle,
            ),
              )),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                     bmiResult,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(interpretation, style: lableTextStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
