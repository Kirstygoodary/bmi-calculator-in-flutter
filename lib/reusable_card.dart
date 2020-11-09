import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  /// Below, we are saying that the continer will
  /// take the value of {this.colour} and assign it
  /// to the class Color

  ReusableCard({@required this.colour, this.cardChild});
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
