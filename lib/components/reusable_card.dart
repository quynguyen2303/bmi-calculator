import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kCardMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kCardBorderRadius),
        ),
      ),
    );
  }
}
