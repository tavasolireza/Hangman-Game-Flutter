import 'dart:math';

class HangmanWords {
  int wordCounter = 0;
  List<int> _usedNumbers = [];
  List<String> _words = [
    'account',
    'acid',
    'across',
    'act',
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
    'harbor',
    'kiss',
    'knee',
    'knife',
    'knot',
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
    'abondon',
    'accurate',
    'amateur',
    'appoint',
    'brutal',
    'budget',
    'century',
    'cinema',
    'collide',
    'decade',
    'disaster',
    'drought',
    'envy',
    'event',
    'expand',
    'extract',
    'fiction',
    'final',
    'fragile',
    'devour',
    'glance',
    'gloomy',
    'guide',
    'harvest',
    'hazy',
    'ignore',
    'illegal',
    'insist',
    'lecture',
    'lottery',
    'lunatic',
    'magnify',
    'mature',
    'migrate',
    'mortal',
    'mute',
    'neglect',
    'neutral',
    'novel',
    'oath',
    'obesity',
    'obtain',
    'panic',
    'pencil',
    'partial',
    'perish',
    'pioneer',
    'pollute',
    'quench',
    'quote',
    'qualify',
    'rapid',
    'recent',
    'reject',
    'resist',
    'rival',
  ];

  // ignore: missing_return
  String getWord() {
    wordCounter += 1;
    var rand = Random();
    int wordLength = _words.length;
    int randNumber = rand.nextInt(wordLength);
    bool notUnique = true;
    if (wordCounter - 1 == _words.length) {
      notUnique = false;
      return '';
    }
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

  String getHiddenWord(int wordLength) {
    String hiddenWord = '';
    for (int i = 0; i < wordLength; i++) {
      hiddenWord += '_';
    }
    return hiddenWord;
  }
}
