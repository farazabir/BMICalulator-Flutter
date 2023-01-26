import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {
  const CardContent({required this.icon,required this.text,required this.iconColor});

  final IconData icon;
  final Color iconColor;
  final String text; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(icon,
      size:80,
      color: iconColor,
      ),
      SizedBox(height: 15,),
      Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize:20,
        color: iconColor,
      ),
      )
    ]);
  }
}
