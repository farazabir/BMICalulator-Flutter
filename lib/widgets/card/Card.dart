import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  
 
  final Color colour;
  final Widget? cardChild;
  final double value;
  final VoidCallback? onTap;

    InputCard({ required this.colour ,
    this.cardChild,
    this.value = 0,
   this.onTap,});
   

  @override
  Widget build(BuildContext context) {
     
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
          child: cardChild,
          margin: EdgeInsets.all(value),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
