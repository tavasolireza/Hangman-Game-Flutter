import 'package:flutter/material.dart';
import 'package:flutter_hangman/Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF3e38b0),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'MiriamLibre'),
      ),
      home: HomeScreen(),
    );
  }
}
