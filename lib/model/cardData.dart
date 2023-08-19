
import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'card.dart';

class CardData extends ChangeNotifier {
  final List<Card> _cards = [];

  UnmodifiableListView<Card> get cards {
    return UnmodifiableListView(_cards);
  }

  int get taskCount {
    return _cards.length;
  }

  void addCard(String cardName,String cardNo,String cvv,String expr) {
    final card = Card(cardName: cardName,cardNo: cardNo,expr: expr, cvv: cvv);
    _cards.add(card);
    notifyListeners();
  }

  int copy(int index){
    String stringValue = _cards[index].cardNo;
    String cleanedValue = stringValue.replaceAll(RegExp(r'\s'), '');
    int intValue = int.parse(stringValue);
    return intValue;
  }

  // void updateTask(Task task) {
  //   task.toggleDone();
  //   notifyListeners();
  // }

  void deleteTask(Card card) {
    _cards.remove(card);
    notifyListeners();
  }
}
