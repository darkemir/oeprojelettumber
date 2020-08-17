import 'package:flutter/material.dart';
import 'package:lettumber/input_page_cucumber.dart';
import 'package:lettumber/input_page_lettuce.dart';
import 'package:lettumber/result_page.dart';
import 'package:lettumber/selection_screen.dart';

void main() {
  runApp(LettumberApp());
}

class LettumberApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xCCF4ECE9),
        appBarTheme: AppBarTheme(
          color: Color(0xC5F4ECE9),
        ),
      ),
      home: SelectionsClass(),
      routes: {
        'toSelection': (context) => SelectionsClass(),
        'toInputCucumber': (context) => InputPageCucumber(),
        'toInputLettuce': (context) => InputPageLettuce(),
        'LettuceToResults': (context) =>
            Results(result: calculatorLettuce.lettuceCalculate()),
        'CucumberToResults': (context) => Results(
              result: calculator.cucumberCalculate(),
            ),
      },
    );
  }
}
