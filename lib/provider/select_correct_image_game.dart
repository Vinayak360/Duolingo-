import 'package:flutter/material.dart';

class ImageSelect with ChangeNotifier {
  String? selected;
  String? answer;

  void initializeEverything() {
    selected = null;
  }

  void changeSelected(String currentlySelected) {
    selected = currentlySelected;
    notifyListeners();
  }
}

class OngoingGameStats with ChangeNotifier {
  int numberOfGames = 4;
  int completedGames = 1;
  late double progress = completedGames / numberOfGames;
  void increaseProgress() {
    completedGames++;
    notifyListeners();
  }
}

class MatchThePairs with ChangeNotifier {
  int selectedCount = 0;
  String? selected1;
  String? selected2;
  void setSelected(String currentlySelected) {
    if (selected1 != null) {
      selected1 = currentlySelected;
    } else {
      selected2 = currentlySelected;
      checkanswer();
      selected1 = null;
      selected2 = null;
    }
    selectedCount++;
    notifyListeners();
  }

  bool checkanswer() {
    if (selected1 == selected2) {
      return true;
    } else {
      return false;
    }
  }
}
