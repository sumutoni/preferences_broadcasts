import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:preferences_broadcasts/Account/login.dart';
import 'package:preferences_broadcasts/Controller/dependency_injection.dart';
import 'package:preferences_broadcasts/Themes/theme_injection.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'Themes/theme.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
      statusBarIconBrightness: Brightness.dark, // Set status bar icons' color to dark
    ));
  runApp(const MyApp());
  DependencyInjection.init();
  ThemeInjectcion.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     final ThemeController themeController = Get.find();
    return Obx(() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // themeMode: themeController.isDarkMode.value
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      theme: themeController.isDarkMode.value?dark:light,
      home: Login() ,
    ));

  }
}

