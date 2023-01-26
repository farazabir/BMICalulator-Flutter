import 'package:bmicalculator/screens/input_screen.dart';
import 'package:bmicalculator/widgets/button/containerButton.dart';
import 'package:bmicalculator/widgets/card/Card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
 const ResultScreen({required this.bmiResult,required this.resultText,required this.interpretation});
     


  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff090F32),
      ),
      backgroundColor: Color(0xFF090F32),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InputCard(
              colour: Color(0xff2E3449),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w700),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize:20,
                    fontWeight: FontWeight.w700
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
           //Re-calculate button
                  ContainerButton(
                   buttonColor:Color(0xffFF0067),
                   buttonheight: 70.0,
                    buttonText: "RE-CALCULATE", 
                    onTap: (() {
                     Navigator.push(context, 
                     MaterialPageRoute(builder: (context)
                     => inputScreen()
                     )
                     ) ;
                    }
                    ))
        ],
      ),
    );
  }
}
