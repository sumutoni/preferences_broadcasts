import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

ThemeData light = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white, titleTextStyle: TextStyle(color:Color.fromARGB(193, 13, 14, 92)), iconTheme: IconThemeData(color: Color.fromARGB(193, 13, 14, 92)),),
  
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    bodyText2: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    subtitle1: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),
    subtitle2: TextStyle(color: Color.fromARGB(248, 78, 45, 122)),

  )
  
);
ThemeData dark = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(248, 49, 42, 58),
  appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(248, 49, 42, 58), titleTextStyle: TextStyle(color:Color.fromARGB(248, 203, 194, 214)), iconTheme: IconThemeData(color: Color.fromARGB(193, 194, 194, 212), weight: 30.0),),
  
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    bodyText2: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    subtitle1: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),
    subtitle2: TextStyle(color: Color.fromARGB(248, 203, 194, 214)),

  ),
  drawerTheme: const DrawerThemeData(backgroundColor: Color.fromARGB(248, 49, 42, 58),),
  listTileTheme: const ListTileThemeData(iconColor: Color.fromARGB(248, 203, 194, 214), textColor: Color.fromARGB(248, 203, 194, 214)),
  

  
   
);

class ThemeController extends GetxController {
  late SharedPreferences _prefs;

  final RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  void toggleTheme(bool isDark) {
    isDarkMode.value = isDark;
    _saveThemeToPrefs(isDark);
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> _loadThemeFromPrefs() async {
    await _initPrefs();
    isDarkMode.value = _prefs.getBool('isDarkMode') ?? false;
  }

  void _saveThemeToPrefs(bool isDark) {
    _prefs.setBool('isDarkMode', isDark);
  }
}