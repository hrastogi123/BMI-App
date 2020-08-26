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
  int weight = 60;
  int age = 20;

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
                    Text(
                      'HEIGHT',
                      style: lableTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: lableTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: Color(0xFFEB1555),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: activecardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: lableTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: numberTextStyle,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Kg',
                              style: lableTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReuseableCard(
                    colour: activecardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: lableTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  age.toString(),
                                  style: numberTextStyle,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Years',
                                  style: lableTextStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            ),
                          ],
                        ),
                  ))
                ],
              )),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('CALCULATE',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    letterSpacing: 1.7,
                  )),
                ),
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon,@required this.onPressed});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon,),
      shape: CircleBorder(),
      elevation: 100,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFFEB1555),
    );
  }
}
