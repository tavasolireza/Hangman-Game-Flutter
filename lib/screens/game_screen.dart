import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hangman/utilities/alphabet.dart';
import 'package:flutter_hangman/components/word_button.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String reza = '';
  Alphabet englishAlphabet = Alphabet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Text(
                  reza,
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(vertical: 15),
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  children: List.generate(
                    26,
                    (index) {
                      return Center(
                          child: WordButton(
                        buttonTitle: englishAlphabet.alphabet[index],
                        onPress: () {
                          setState(() {
                            reza += englishAlphabet.alphabet[index];
                          });
                        },
                      ));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Align(
//            child: GridView.count(
//              crossAxisCount: 7,
//              crossAxisSpacing: 10,
//              mainAxisSpacing: 10,
//              children: List.generate(
//                26,
//                (index) {
//                  return Center(
//                    child: FlatButton(
//                      color: Color(0xFF099a97),
//                      onPressed: () {},
//                      child: Text(
//                        Alphabet().alphabet[index],
//                      ),
//                    ),
//                  );
//                },
//              ),
//            ),
//          )
