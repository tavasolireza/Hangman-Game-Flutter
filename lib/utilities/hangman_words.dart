import 'dart:math';

class HangmanWords {
  List<int> _usedNumbers = [];
  List<String> _words = [
    'account',
    'acid',
    'across',
    'act',
    'addition',
    'bit',
    'bite',
    'bitter',
    'black',
    'blade',
    'blood',
    'bit',
    'bite',
    'bitter',
    'black',
    'blade',
    'blood',
    'chief',
    'chin',
    'church',
    'circle',
    'clean',
    'clear',
    'clock',
    'cloth',
    'delicate',
    'dependent',
    'design',
    'desire',
    'engine',
    'enough',
    'equal',
    'error',
    'even',
    'event',
    'ever',
    'frequent',
    'friend',
    'growth',
    'guide',
    'gun',
    'hair',
    'hammer',
    'hand',
    'hanging',
    'happy',
    'harbour',
    'kiss',
    'knee',
    'knife',
    'knot',
    'knowledge',
    'land',
    'language',
    'last',
    'late',
    'laugh',
    'law',
    'lead',
    'leaf',
    'make',
    'male',
    'man',
    'manager',
    'map',
    'mark',
    'market',
    'married',
    'mass',
    'present',
    'price',
    'print',
    'prison',
    'private',
    'probable',
    'process',
    'sand',
    'say',
    'scale',
    'school',
    'science',
    'scissors',
    'screw',
    'sea',
    'seat',
    'second',
    'writing',
    'wrong',
    'year',
    'yellow',
  ];

  // ignore: missing_return
  String getWord() {
    var rand = Random();
    int wordLength = _words.length;
    int randNumber = rand.nextInt(wordLength);
    bool notUnique = true;
    while (notUnique) {
      if (!_usedNumbers.contains(randNumber)) {
        notUnique = false;
        _usedNumbers.add(randNumber);
        return _words[randNumber];
      } else {
        randNumber = rand.nextInt(wordLength);
      }
    }
  }
}
