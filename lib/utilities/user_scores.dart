class Score {
  final int id;
  final String scoreDate;
  final int userScore;

  Score({this.id, this.scoreDate, this.userScore});

  Map<String, dynamic> toMap() {
    return {
//      'id': id,
      'scoreDate': scoreDate,
      'userScore': userScore,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.

  @override
  String toString() {
    return '$userScore,$scoreDate,$id';
  }
}
