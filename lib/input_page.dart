import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// set variables to avoid repeated code.
const double bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xffeb1555);

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: containerColor,
                    cardChild: IconContent(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: containerColor,
                  cardChild: IconContent(
                    label: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ))
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: containerColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: containerColor)),
                Expanded(child: ReusableCard(colour: containerColor))
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double
                .infinity, // stretches to the full width of the screen, for all screens
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
