import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/score_db.dart' as score_database;
import 'package:flutter_hangman/utilities/user_scores.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_hangman/utilities/constants.dart';
import 'package:date_format/date_format.dart';

class ScoreScreen extends StatelessWidget {
  final query;

  ScoreScreen({this.query});

  List<TableRow> createRow(var query) {
    query.sort((a, b) => b.toString().compareTo(a.toString()));
    List<TableRow> rows = [];
    rows.add(
      TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                "Rank",
                style: kHighScoreTableHeaders,
//          textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                "Date",
                style: kHighScoreTableHeaders,
//          textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                "Score",
                style: kHighScoreTableHeaders,
//          textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
    print("${query[0]} this is query 0");
    int numOfRows = query.length;
    List<String> topRanks = ["🥇", "🥈", "🥉"];
    for (var i = 0; i < numOfRows && i < 15; i++) {
      var row = query[i].toString().split(",");
//      var scoreDate = row[1].split(" ")[0].substring(
//            2,
//          );
      var date = row[1].split(" ")[0].split("-");

      var scoreDate = formatDate(
          DateTime(int.parse(date[0]), int.parse(date[1]), int.parse(date[2])),
          [yy, '-', M, '-', d]);

      Widget item = TableCell(
//        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            i < 3 ? topRanks[i] + '${i + 1}' : '${i + 1}',
            style: kHighScoreTableRowsStyle,
            textAlign: TextAlign.center,
          ),
        ),
//        color: Colors.red,
      );
      Widget item1 = TableCell(
//        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '$scoreDate',
              style: kHighScoreTableRowsStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
//        color: Colors.red,
      );
      Widget item2 = TableCell(
//        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '${row[0]}',
            style: kHighScoreTableRowsStyle,
            textAlign: TextAlign.center,
          ),
        ),
//        color: Colors.red,
      );
      rows.add(
        TableRow(
          children: [item, item1, item2],
        ),
      );
    }
    return rows;
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
//    print(query.length);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
//                height: 80,
                margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 15.0),
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
//            Padding(
//              padding: const EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Center(
//                    child: Text(
//                      "RANK",
//                      style: kHighScoreTableHeaders,
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                  Center(
//                    child: Text(
//                      "DATE",
//                      style: kHighScoreTableHeaders,
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                  Center(
//                    child: Text(
//                      "SCORE",
//                      style: kHighScoreTableHeaders,
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                ],
//              ),
//            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  textBaseline: TextBaseline.alphabetic,
                  children: createRow(query),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
