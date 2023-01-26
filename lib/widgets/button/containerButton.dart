import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton(
      {this.buttonColor,
      this.buttonheight,
      required this.buttonText,
      required this.onTap});

  final Color? buttonColor;
  final double? buttonheight;
  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
        onTap
      ,
      child: Container(
        color: buttonColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: buttonheight,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
