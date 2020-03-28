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

void manipulateDatabase(Score scoreObject, final database) async {
  await insertScore(scoreObject, database);
  print(await scores(database));
}
