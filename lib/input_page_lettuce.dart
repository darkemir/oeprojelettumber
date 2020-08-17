import 'package:flutter/material.dart';
import 'package:lettumber/calculator.dart';

CalculatingTime calculatorLettuce;

class InputPageLettuce extends StatefulWidget {
  @override
  _InputPageLettuceState createState() => _InputPageLettuceState();
}

enum NutrientPercentage { twentyfivePercent, fiftyPercent }
enum VcPercentage { onedotsixPercent, threedottwoPercent }

class _InputPageLettuceState extends State<InputPageLettuce> {
  NutrientPercentage nutrientPercentage;
  VcPercentage vcPercentage;

  Color inactiveColour = Color(0xC0928D8B);
  Color activeColour = Color(0xC0F4ECE9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pushNamed(context, 'toSelection'),
        ),
        title: Text(
          'LETTUMBER',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'Lettuce',
              child: Container(
                height: 350.0,
                width: 100.0,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xC0F4ECE9),
                    image: DecorationImage(
                      image: AssetImage('images/lettuce.png'),
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        nutrientPercentage =
                            NutrientPercentage.twentyfivePercent;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: nutrientPercentage ==
                                NutrientPercentage.twentyfivePercent
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '%25 NUTRIENT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        nutrientPercentage = NutrientPercentage.fiftyPercent;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: nutrientPercentage ==
                                NutrientPercentage.fiftyPercent
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '%50 NUTRIENT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              child: Divider(
                thickness: 4.0,
                height: 4.0,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        vcPercentage = VcPercentage.onedotsixPercent;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: vcPercentage == VcPercentage.onedotsixPercent
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '%1.6 VC',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        vcPercentage = VcPercentage.threedottwoPercent;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: vcPercentage == VcPercentage.threedottwoPercent
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '%3.2 VC',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'IndieFlower',
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                calculatorLettuce = CalculatingTime(
                    selectedvcPercentage: vcPercentage,
                    selectednutrientPercentage: nutrientPercentage);
                Navigator.pushNamed(context, 'LettuceToResults');
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: inactiveColour,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
