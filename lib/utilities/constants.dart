import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kActionButtonTextStyle = TextStyle(
  fontSize: 25,
  color: Colors.white,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.5,
);

const kActionButtonColor = Color(0xFF1089ff);
const kActionButtonHighlightColor = Color(0xFF1089ff);

const kWordButtonColor = Color(0xFF1089ff);
const kTooltipColor = Color(0xFF1089ff);

const kWordButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 27,
);

const kHighScoreTableHeaders = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 1.0,
);

const kHighScoreTableRowsStyle = TextStyle(
  color: Colors.white,
  fontSize: 27.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 1.0,
);

var kSuccessAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Color(0xFF00e676),
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
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

var kGameOverAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
  descStyle: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
    letterSpacing: 1.5,
  ),
);

var kFailedAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: Color(0xFF2C1E68),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
);

const kDialogButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.5,
);

const kWordTextStyle = TextStyle(
    fontSize: 57,
    color: Colors.white,
    fontFamily: 'FiraMono',
    letterSpacing: 8);

const kDialogButtonColor = Color(0x00000000);

const kWordCounterTextStyle =
    TextStyle(fontSize: 29.5, color: Colors.white, fontWeight: FontWeight.w900);
