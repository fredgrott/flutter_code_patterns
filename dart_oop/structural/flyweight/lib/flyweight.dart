// ignore_for_file: avoid_print

import "dart:collection";

class Letter {
  late String letter;
  Letter(String l) {
    if (l.length != 1) {
      throw new Exception("Can only be a single letter");
    }
    letter = l;
  }

  @override
  String toString() => letter;
}

class Sentence {
  List<Letter> letters = [];
  void addLetter(Letter letter) => letters.add(letter);

  @override
  // ignore: avoid_redundant_argument_values
  String toString() => letters.join("");
}

class LetterFactory {
  Map<String, Letter> letters = {};

  Letter? fetchLetter(String l) {
    if (letters.containsKey(l)) {
      return letters[l];
    }
    final letter = Letter(l);
    letters[l] = letter;
    return letter;
  }

  int get lettersCreated => letters.length;
}

class Document {
  LetterFactory letterFactory = LetterFactory();
  int lettersWritten = 0;
  late SplayTreeMap<int, Sentence> sentences;

  Document() {
    sentences = SplayTreeMap<int, Sentence>();
  }

  void export() => sentences.forEach((k, v) => print("$v"));

  void write(int sentenceKey, String letterString) {
    if (!sentences.containsKey(sentenceKey)) {
      sentences[sentenceKey] = Sentence();
    }

    final l = letterFactory.fetchLetter(letterString);
    sentences[sentenceKey]?.addLetter(l!);
    lettersWritten++;
  }

  int get lettersCreated => letterFactory.lettersCreated;
}
