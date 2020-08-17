import 'package:flutter/material.dart';

class SelectionsClass extends StatefulWidget {
  @override
  _SelectionsClassState createState() => _SelectionsClassState();
}

class _SelectionsClassState extends State<SelectionsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LETTUMBER',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'toInputCucumber');
                  print('usertapped');
                },
                child: Hero(
                  tag: 'Cucumber',
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Color(0xC0F4ECE9),
                        image: DecorationImage(
                          image: AssetImage('images/cucumber.png'),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'toInputLettuce');
                print('usertapped');
              },
              child: Hero(
                tag: 'Lettuce',
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Color(0xC0F4ECE9),
                      image: DecorationImage(
                        image: AssetImage('images/lettuce.png'),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
