import 'dart:async';
import 'package:flutter_hangman/utilities/user_scores.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> openDB() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'scores_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE scores(id INTEGER PRIMARY KEY AUTOINCREMENT, scoreDate TEXT, userScore INTEGER)",
      );
    },
    version: 1,
  );
  return database;
}

Future<void> insertScore(Score score, final database) async {
  final Database db = await database;

  await db.insert(
    'scores',
    score.toMap(),
    conflictAlgorithm: ConflictAlgorithm.ignore,
  );
}

Future<List<Score>> scores(final database) async {
  // Get a reference to the database.
  final Database db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('scores');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return Score(
      id: maps[i]['id'],
      scoreDate: maps[i]['scoreDate'],
      userScore: maps[i]['userScore'],
    );
  });
}

Future<void> updateScore(Score score, final database) async {
  // Get a reference to the database.
  final db = await database;

  // Update the given Dog.
  await db.update(
    'scores',
    score.toMap(),
    // Ensure that the Dog has a matching id.
    where: "id = ?",
    // Pass the Dog's id as a whereArg to prevent SQL injection.
    whereArgs: [score.id],
  );
}

Future<void> deleteScore(int id, final database) async {
  // Get a reference to the database.
  final db = await database;

  // Remove the Dog from the database.
  await db.delete(
    'scores',
    // Use a `where` clause to delete a specific dog.
    where: "id = ?",
    // Pass the Dog's id as a whereArg to prevent SQL injection.
    whereArgs: [id],
  );
}

void main(int mode, Score scoreObject, final database) async {
//  final database = openDB();

//  var fido = Score(
//    id: 1,
//    scoreDate: DateTime.now().toString(),
//    userScore: 200,
//  );

  // Insert a dog into the database.
  await insertScore(scoreObject, database);

  // Print the list of dogs (only Fido for now).
  print(await scores(database));

  // Update Fido's age and save it to the database.
//  fido = Score(
//    id: fido.id,
//    scoreDate: fido.scoreDate,
//    userScore: fido.userScore + 7,
//  );
//  await updateScore(fido);
//
//  // Print Fido's updated information.
//  print(await scores());

  // Delete Fido from the database.

//  await deleteScore(fido.id);

  // Print the list of dogs (empty).

//  print(await scores());
}

//class Score {
//  final int id;
//  final DateTime scoreDate;
//  final int userScore;
//
//  Score({this.id, this.scoreDate, this.userScore});
//
//  Map<String, dynamic> toMap() {
//    return {
//      'id': id,
//      'scoreDate': scoreDate,
//      'userScore': userScore,
//    };
//  }
//
//  // Implement toString to make it easier to see information about
//  // each dog when using the print statement.
//  @override
//  String toString() {
//    return 'Dog{id: $scoreDate, name: $userScore, age: $userScore}';
//  }
//}
