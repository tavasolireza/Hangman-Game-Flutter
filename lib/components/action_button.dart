import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.buttonTitle, this.onPress});

  final VoidCallback? onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    // return RaisedButton(
    //   elevation: 3.0,
    //   color: kActionButtonColor,
    //   highlightColor: kActionButtonHighlightColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   onPressed: onPress,
    //   child: Text(
    //     buttonTitle,
    //     style: kActionButtonTextStyle,
    //   ),
    // );
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: kActionButtonHighlightColor,
        backgroundColor: kActionButtonColor,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
