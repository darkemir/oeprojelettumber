import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String result;
  Results({this.result});
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
      body: Center(
        child: Container(
          child: Text(
            result,
            style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
