import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton({this.buttonTitle, this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 3.0,
      color: kActionButtonColor,
      highlightColor: kActionButtonHighlightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
