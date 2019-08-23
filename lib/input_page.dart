import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: new ReusableCard(
                  color: activeCardColor,
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: new IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}


