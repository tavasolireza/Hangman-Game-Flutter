import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hangman/utilities/alphabet.dart';
import 'package:flutter_hangman/components/word_button.dart';
import 'package:flutter_hangman/utilities/hangman_words.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  HangmanWords wordList = HangmanWords();
  Alphabet englishAlphabet = Alphabet();

  @override
  Widget build(BuildContext context) {
    String word = wordList.getWord();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.center,
                child: Text(
                  word,
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontFamily: 'FiraMono',
                      letterSpacing: 8),
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
//                            reza = reza.replaceFirst(
//                                RegExp('_'), englishAlphabet.alphabet[index]);
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
