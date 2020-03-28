import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';
import 'package:date_format/date_format.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                "Date",
                style: kHighScoreTableHeaders,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Center(
              child: Text(
                "Score",
                style: kHighScoreTableHeaders,
              ),
            ),
          ),
        ],
      ),
    );
    print("${query[0]} this is query 0");
    int numOfRows = query.length;
    List<String> topRanks = ["🥇", "🥈", "🥉"];
    for (var i = 0; i < numOfRows && i < 10; i++) {
      var row = query[i].toString().split(",");
      var date = row[1].split(" ")[0].split("-");
      var scoreDate = formatDate(
          DateTime(int.parse(date[0]), int.parse(date[1]), int.parse(date[2])),
          [yy, '-', M, '-', d]);

      Widget item = TableCell(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            i < 3 ? topRanks[i] + '${i + 1}' : '${i + 1}',
            style: kHighScoreTableRowsStyle,
            textAlign: TextAlign.center,
          ),
        ),
      );
      Widget item1 = TableCell(
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
      );
      Widget item2 = TableCell(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '${row[0]}',
            style: kHighScoreTableRowsStyle,
            textAlign: TextAlign.center,
          ),
        ),
      );
      rows.add(
        TableRow(
          children: [item, item1, item2],
        ),
      );
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: query.length == 0
            ? Stack(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      "No Scores Yet!",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 15.0),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      tooltip: 'Home',
                      iconSize: 35,
                      icon: Icon(MdiIcons.home),
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              )
            : Column(
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 15.0),
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          tooltip: 'Home',
                          iconSize: 35,
                          icon: Icon(MdiIcons.home),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Center(
                        child: Container(
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
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
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
