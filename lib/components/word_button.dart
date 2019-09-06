import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class WordButton extends StatelessWidget {
  WordButton({this.buttonTitle, this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kWordButtonColor,
      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: kWordButtonTextStyle,
      ),
    );
  }
}
