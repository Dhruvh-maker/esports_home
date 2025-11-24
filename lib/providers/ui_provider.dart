import 'package:flutter/foundation.dart';

class UIProvider with ChangeNotifier {
  int selectedTab = 0;
  bool _isDark = false;

  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }

  void setTab(int index) {
    selectedTab = index;
    notifyListeners();
  }
}
