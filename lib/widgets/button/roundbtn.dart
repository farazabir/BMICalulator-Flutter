
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,this.icon, this.onPressed});

  final IconData? icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: Colors.white,),
      onPressed: onPressed,
      elevation: 100,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade700, 
    );
  }
}