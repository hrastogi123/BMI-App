import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'resuable_card.dart';
import 'constant.dart';


enum gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender select;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        select = gender.male;
                      });
                    },
                    colour: select == gender.male
                        ? activecardColor
                        : inactivecardColor,
                    cardChild: CardContent(
                      icons: FontAwesomeIcons.male,
                      lable: 'Male',
                    ),
                  )),
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          select = gender.female;
                        });
                      },
                      colour: select == gender.female
                          ? activecardColor
                          : inactivecardColor,
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('HEIGHT',style: lableTextStyle,),
                        SizedBox(
                         height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(),style: numberTextStyle,),
                            Text('cm',style: lableTextStyle,),
                          ],
                        ),
                       Slider(
                           value: height.toDouble(),
                           min: 120,
                           max: 220,
                           activeColor: Color(0xFFEB1555),
                           onChanged: (double newValue){
                             setState(() {
                               height = newValue.round();
                             });
                           })
                      ],
                    ),
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
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.circular(7),
                ),
                height: bottomContainerHeight,
              )
            ],
          ),
        ));
  }
}
