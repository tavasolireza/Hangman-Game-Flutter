import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kActionButtonTextStyle = TextStyle(
  fontSize: 35.0,
  color: Colors.white,
);
const kActionButtonColor = Color(0xFF6b48ff);
const kActionButtonHighlightColor = Color(0xFF099a97);

const kWordButtonColor = Color(0xFF099a97);

const kWordButtonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 30);

var kAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  animationDuration: Duration(milliseconds: 400),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  ),
);

const kDialogButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kWordTextStyle = TextStyle(
    fontSize: 60,
    color: Colors.white,
    fontFamily: 'FiraMono',
    letterSpacing: 8);

const kDialogButtonColor = Color(0xFF6b48ff);
