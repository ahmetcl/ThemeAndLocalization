import 'package:localization/theme/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class themeManager with ChangeNotifier {
  ThemeData? _themeData;

  final _themePrefernce = "theme_preference";

  themeManager() {
    _loadTheme();
  }

  ThemeData? get themeData {
    if (_themeData == null) {
      _themeData = appThemeData[Themes.Light];
    }
    return _themeData;
  }

  void _loadTheme() async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    int? prefTheme = sharedPreference.getInt(_themePrefernce);
    if (prefTheme == null) {
      Brightness systemTheme =
          WidgetsBinding.instance.window.platformBrightness;
      prefTheme = systemTheme.index;
    }
    _themeData = appThemeData[Themes.values[prefTheme]];
    notifyListeners();
  }

  setTheme(Themes theme) async {
    _themeData = appThemeData[theme];
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(_themePrefernce, Themes.values.indexOf(theme));
    notifyListeners();
  }
}
