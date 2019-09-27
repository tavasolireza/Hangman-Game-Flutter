import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kActionButtonTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kActionButtonColor = Color(0xFF6b48ff);
const kActionButtonHighlightColor = Color(0xFF099a97);

const kWordButtonColor = Color(0xFF099a97);

const kWordButtonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 30);

var kSuccessAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  ),
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Color(0xFF099a97),
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  ),
);
var kFailedAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  ),
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
  ),
);

const kDialogButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 21,
  fontWeight: FontWeight.bold,
);

const kWordTextStyle = TextStyle(
    fontSize: 60,
    color: Colors.white,
    fontFamily: 'FiraMono',
    letterSpacing: 8);

const kDialogButtonColor = Color(0xFF6b48ff);
