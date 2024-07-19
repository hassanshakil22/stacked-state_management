import 'package:flutter/material.dart';

class CounterService extends ChangeNotifier {
  int counter = 0;
  addCounterValue() {
    counter++;
    print(counter);
    notifyListeners();
  }
}
