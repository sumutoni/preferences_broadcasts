import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:preferences_broadcasts/Account/login.dart';
import 'package:preferences_broadcasts/Controller/dependency_injection.dart';
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
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
    return ChangeNotifierProvider(
      create: (_)=> ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: notifier.darkTheme ? dark : light,
              // useMaterial3: true,
            home: Login() ,
          );
        },
      )
    );
  }
}

