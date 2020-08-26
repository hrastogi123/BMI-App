import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'resuable_card.dart';

const bottomContainerHeight = 70.0;
const activecardColor = Color(0xFF1D1E33);
const inactivecardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: activecardColor,
                    cardChild: CardContent(
                      icons: FontAwesomeIcons.male,
                      lable: 'Male',
                    ),
                  )),
                  Expanded(
                    child: ReuseableCard(
                      colour: activecardColor,
                      cardChild: CardContent(
                        icons: FontAwesomeIcons.female,
                        lable: 'Female',
                      ),
                    ),
                  )
                ],
              )),
              Expanded(
                  child: ReuseableCard(
                colour: activecardColor,
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: activecardColor,
                  )),
                  Expanded(
                      child: ReuseableCard(
                    colour: activecardColor,
                  ))
                ],
              )),
              Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                height: bottomContainerHeight,
              )
            ],
          ),
        ));
  }
}




