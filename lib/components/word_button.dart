import 'package:flutter/material.dart';

class WordButton extends StatelessWidget {
  WordButton({this.buttonTitle, this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Color(0xFF099a97),
      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: TextStyle(
            fontFamily: 'AmaticSC', fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
