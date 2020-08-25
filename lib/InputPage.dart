import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;

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
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReuseableCard(
                  colour: Color(0xFF1D1E33),
                )),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            )),
            Expanded(
                child: ReuseableCard(
              colour: Color(0xFF1D1E33),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReuseableCard(
                  colour: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: ReuseableCard(
                  colour: Color(0xFF1D1E33),
                ))
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
