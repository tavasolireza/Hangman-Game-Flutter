import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hangman/screens/home_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF3e38b0),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'AmaticSC'),
      ),
      home: HomeScreen(),
    );
  }
}
