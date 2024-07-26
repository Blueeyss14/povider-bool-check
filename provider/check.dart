import 'package:flutter/widgets.dart';

class CheckProvider with ChangeNotifier {
  List<bool> _checkToggle = List.filled(3, false);

  List<bool> get toggleCheck => _checkToggle;

  void toggleCheckFn(int index) {
    _checkToggle[index] = !_checkToggle[index];
    notifyListeners();
  }
}
