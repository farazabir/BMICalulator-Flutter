
import 'package:bmicalculator/calculatorBrain.dart';
import 'package:bmicalculator/screens/result_screen.dart';
import 'package:bmicalculator/widgets/button/containerButton.dart';
import 'package:bmicalculator/widgets/button/roundbtn.dart';
import 'package:bmicalculator/widgets/card/Card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/card/CardContent.dart';

final buttonheight = 70.0;
final activeCardsize = 5.0;
final inactiveCardsize = 15.0;
final buttonColor = Color(0xffFF0067);
final activeCardColor = Color(0xff2E3449);
final inactiveCardColor = Color(0xff141A5C);
double height = 4.00;
int weight = 20;
int age = 1;

class inputScreen extends StatefulWidget {
  const inputScreen({super.key});

  @override
  State<inputScreen> createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  double malecardSize = inactiveCardsize;
  double femalecardSize = inactiveCardsize;

  //1= male ; 2 = female
  void updateSelected(int selected) {
    //to select male card
    if (selected == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        malecardSize = activeCardsize;
        femaleCardColor = inactiveCardColor;

        femalecardSize = inactiveCardsize;
      } else {
        maleCardColor = inactiveCardColor;

        malecardSize = inactiveCardsize;
      }
    }

    //female card pressed
    if (selected == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;

        femalecardSize = activeCardsize;
        maleCardColor = inactiveCardColor;

        malecardSize = inactiveCardsize;
      } else {
        femaleCardColor = inactiveCardColor;

        femalecardSize = inactiveCardsize;
      }
    }
  }

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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InputCard(
                    onTap: () {
                      setState(() {
                        updateSelected(1);
                      });
                    },
                    value: malecardSize,
                    colour: maleCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      iconColor: maleCardColor == activeCardColor
                          ? Colors.white
                          : Colors.grey,
                      text: "Male",
                    ),
                  )),
                  Expanded(
                      child: InputCard(
                    onTap: () {
                      setState(() {
                        updateSelected(2);
                      });
                    },
                    value: femalecardSize,
                    colour: femaleCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.venus,
                      iconColor: femaleCardColor == activeCardColor
                          ? Colors.white
                          : Colors.grey,
                      text: "Female",
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
                child: InputCard(
              value: activeCardsize,
              colour: Color(0xff2E3449),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        height.toStringAsPrecision(2),
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "ft",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 3.00,
                    max: 7.0,
                    activeColor: buttonColor,
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue;
                      });
                    },
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InputCard(
                    value: activeCardsize,
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //weight increase button
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: InputCard(
                    value: activeCardsize,
                    colour: activeCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //age increase button
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ]),
                  ))
                ],
              ),
            ),
            //calculate bmi button
            ContainerButton(
                buttonColor: buttonColor,
                buttonheight: buttonheight,
                buttonText: "Calculate Your BMI",
                onTap:(() {

                  CalculatorBrain calBmi = CalculatorBrain(height: height, weight: weight);
                   print("objectasd");               
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  => ResultScreen(
                    bmiResult:calBmi.calculateBMI() ,
                    resultText:calBmi.getResult() ,
                    interpretation:calBmi.getInterpretation() ,
                  )
                  ));
                }) ,
                                               
                ),
                
          ],
        ));
  }
}
