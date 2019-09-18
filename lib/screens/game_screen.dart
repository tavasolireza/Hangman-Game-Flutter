import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hangman/utilities/alphabet.dart';
import 'package:flutter_hangman/components/word_button.dart';
import 'package:flutter_hangman/utilities/constants.dart';
import 'package:flutter_hangman/utilities/hangman_words.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  HangmanWords hangmanWords = HangmanWords();
  Alphabet englishAlphabet = Alphabet();
  String word;
  String hiddenWord;
  List<String> wordList = [];
  List<bool> buttonStatus;

  void initWords() {
    print('i entered here');
    buttonStatus = List.generate(26, (index) {
      return true;
    });
    wordList = [];
    word = hangmanWords.getWord();
    if (word.length != 0) {
      print(word.length);
      hiddenWord = hangmanWords.getHiddenWord(word.length);
    } else {
      print('fuck');
      hiddenWord = '';
      Alert(
              context: context,
              title: "Game is Finished",
              desc: "You've guessed all of the words right!")
          .show();
    }

    for (int i = 0; i < word.length; i++) {
      wordList.add(word[i]);
    }
  }

  void wordPress(int index) {
    setState(() {
      for (int i = 0; i < wordList.length; i++) {
        if (wordList[i] == englishAlphabet.alphabet[index]) {
          wordList[i] = '';
          hiddenWord = hiddenWord.replaceFirst(RegExp('_'), word[i], i);
        }
      }
      buttonStatus[index] = false;
      if (hiddenWord == word) {
        Alert(
          context: context,
          style: kAlertStyle,
          type: AlertType.success,
          title: word,
          desc: "You guessed it right!",
          buttons: [
            DialogButton(
              child: Text(
                "Next Word",
                style: kDialogButtonTextStyle,
              ),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                  initWords();
                });
              },
              width: 120,
              color: kDialogButtonColor,
              height: 45,
            )
          ],
        ).show();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initWords();
    print(word);
  }

  @override
  Widget build(BuildContext context) {
    print(wordList);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    hiddenWord,
                    style: kWordTextStyle,
                  ),
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
                        onPress:
                            buttonStatus[index] ? () => wordPress(index) : null,
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
