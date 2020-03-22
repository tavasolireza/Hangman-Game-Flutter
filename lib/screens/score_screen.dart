import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/score_db.dart' as score_database;
import 'package:flutter_hangman/utilities/user_scores.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class ScoreScreen extends StatelessWidget {
  final query;

  ScoreScreen({this.query});

  List<Widget> createRow(int numOfRows, var query) {
    List<Widget> items = [];
    for (var i = 0; i < numOfRows; i++) {
      var rowString = query;
      var row = rowString[i].toString().split(",");
      Widget item = Container(
        padding: const EdgeInsets.all(8),
        child: Text('${row[0]}'),
        color: Colors.red,
      );
      Widget item1 = Container(
        padding: const EdgeInsets.all(8),
        child: Text('${row[1]}'),
        color: Colors.red,
      );
      Widget item2 = Container(
        padding: const EdgeInsets.all(8),
        child: Text('${row[2]}'),
        color: Colors.red,
      );
      items.addAll([item, item1, item2]);
    }
    return items;
//    Widget column1 = Container(
//      padding: const EdgeInsets.all(8),
//      child: const Text('This is column 1'),
//      color: Colors.red,
//    );
//    Widget column2 = Container(
//      padding: const EdgeInsets.all(8),
//      child: const Text('This is column 2'),
//      color: Colors.yellow,
//    );
//    Widget column3 = Container(
//      padding: const EdgeInsets.all(8),
//      child: const Text('This is column 3'),
//      color: Colors.green,
//    );
//    return [column1, column2, column3];
  }

  @override
  Widget build(BuildContext context) {
    int numOfRows = query.length;
//    print(query.length);
    print(numOfRows);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                height: 100,
                margin: EdgeInsets.all(8.0),
                child: Text(
                  'High Scores',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Rank",
                      style: kHighScoreTableHeaders,
                    ),
                  ),
                  Center(
                    child: Text("Date", style: kHighScoreTableHeaders),
                  ),
                  Center(
                    child: Text("Score", style: kHighScoreTableHeaders),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: createRow(numOfRows, query).map((text) {
                  return Center(
                    child: text,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
