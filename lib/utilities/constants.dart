import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kActionButtonTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.white,
  fontWeight: FontWeight.w700,
  letterSpacing: 1.0,
);
const kActionButtonColor = Color(0xFF3e64ff);
const kActionButtonHighlightColor = Color(0xFF3e64ff);

const kWordButtonColor = Color(0xFF3e64ff);
const kTooltipColor = Color(0xFF3e64ff);

const kWordButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 29.5,
);

var kSuccessAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Color(0xFF00e676),
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
    letterSpacing: 2.0,
  ),
);
var kExitAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
);

var kFailedAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
    letterSpacing: 2.0,
  ),
);

const kDialogButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.0,
);

const kWordTextStyle = TextStyle(
    fontSize: 57,
    color: Colors.white,
    fontFamily: 'FiraMono',
    letterSpacing: 8);

const kDialogButtonColor = Color(0xFF3e64ff);

const kWordCounterTextStyle =
    TextStyle(fontSize: 29.5, color: Colors.white, fontWeight: FontWeight.w900);
