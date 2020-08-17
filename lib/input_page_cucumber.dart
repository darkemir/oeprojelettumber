import 'package:flutter/material.dart';
import 'package:lettumber/calculator.dart';

CalculatingTime calculator;

class InputPageCucumber extends StatefulWidget {
  @override
  _InputPageCucumberState createState() => _InputPageCucumberState();
}

enum PlantStyle { soil, hydroponic }
enum CucumberType { armenian, normal }

class _InputPageCucumberState extends State<InputPageCucumber> {
  PlantStyle plantStyle;
  CucumberType cucumberType;

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
              tag: 'Cucumber',
              child: Container(
                height: 350.0,
                width: 100.0,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xC0F4ECE9),
                    image: DecorationImage(
                      image: AssetImage('images/cucumber.png'),
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
                        plantStyle = PlantStyle.soil;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: plantStyle == PlantStyle.soil
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'SOIL',
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
                        plantStyle = PlantStyle.hydroponic;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: plantStyle == PlantStyle.hydroponic
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'HYDROPONIC',
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
                        cucumberType = CucumberType.armenian;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 15.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: cucumberType == CucumberType.armenian
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'ARMENIAN CUCUMBER',
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
                        cucumberType = CucumberType.normal;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(top: 30.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: cucumberType == CucumberType.normal
                            ? activeColour
                            : inactiveColour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'CUCUMBER',
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
                calculator = CalculatingTime(
                    selectedplantStyle: plantStyle,
                    selectedcucumberType: cucumberType);
                Navigator.pushNamed(context, 'CucumberToResults');
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
