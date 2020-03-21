import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hangman/components/action_button.dart';
import 'package:flutter_hangman/utilities/hangman_words.dart';
import 'game_screen.dart';

class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                'HANGMAN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'images/gallow.png',
                height: height * 0.5,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.055,
          ),
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
//                    width: 155,
                    height: 62,
                    child: ActionButton(
                      buttonTitle: 'Start',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(
                              hangmanObject: widget.hangmanWords,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
//                    width: 155,
                    height: 65,
                    child: ActionButton(
                      buttonTitle: 'High Scores',
                      onPress: () {
                        Navigator.pushNamed(context, 'scorePage');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
