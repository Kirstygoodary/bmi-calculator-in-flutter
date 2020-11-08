import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: ReusableContainer(
                    colour: containerColor,
                    cardChild: Column(
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 80.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff8d8e98),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(child: ReusableContainer(colour: containerColor))
              ],
            ),
          ),
          Expanded(child: ReusableContainer(colour: containerColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableContainer(colour: containerColor)),
                Expanded(child: ReusableContainer(colour: containerColor))
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

class ReusableContainer extends StatelessWidget {
  // const ReusableContainer({
  //   Key key,
  // }) : super(key: key);

  /// Below, we are saying that the continer will
  /// take the value of {this.colour} and assign it
  /// to the class Color

  ReusableContainer({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  // final makes the property immutable

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour), //here we are making the corners more rounded
      // and adding the colour
    );
  }
}
