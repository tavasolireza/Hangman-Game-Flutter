import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hangman/components/action_button.dart';
import 'game_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(25.0),
            alignment: Alignment.topCenter,
            child: Text(
              'Hangman',
              style: TextStyle(
                  fontFamily: 'AmaticSC',
                  color: Colors.white,
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 100),
            child: Image.asset(
              'images/gallow.png',
              height: 350,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 190,
              height: 60,
              margin: EdgeInsets.only(top: 330.0),
              child: ActionButton(
                buttonTitle: 'New Game',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
