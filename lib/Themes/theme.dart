import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


ThemeData light = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  iconTheme: const IconThemeData(color: Color.fromARGB(193, 13, 14, 92)),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    bodyText2: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    subtitle1: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    subtitle2: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),

  )
  
);
ThemeData dark = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(248, 49, 42, 58),
  appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(248, 49, 42, 58)),
  iconTheme: const IconThemeData(color: Color.fromARGB(193, 194, 194, 212), weight: 30.0),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    bodyText2: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    subtitle1: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    subtitle2: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),

  ),
  drawerTheme: const DrawerThemeData(backgroundColor: Color.fromARGB(248, 49, 42, 58),),
   
);

class ThemeNotifier extends ChangeNotifier{
  String key = "theme";
  late SharedPreferences prefs;
  bool _darkTheme = false;

 ThemeNotifier() {
    _initPrefs().then((_) {
      _loadPrefs();
    });
  }
  
  bool get darkTheme => _darkTheme;

  toggleTheme(){
    _darkTheme = !_darkTheme;
    _savePrefs();
    notifyListeners();
  }

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  _loadPrefs() async{
   await _initPrefs();
   _darkTheme = prefs.getBool(key) ?? false;
   notifyListeners();
  }

  _savePrefs() async{
    await _initPrefs();
    prefs.setBool(key, _darkTheme);
  }
}