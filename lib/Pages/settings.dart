import 'package:flutter/material.dart';
import 'package:preferences_broadcasts/Themes/theme.dart';
import 'package:provider/provider.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  Widget settingsItem(String text, String subtitle){
    return Material(
      color: const Color.fromARGB(0, 9, 36, 78),
      child: ListTile(
        contentPadding: const EdgeInsets.only(top:50.0, left: 30.0),
        selectedTileColor: const Color.fromARGB(146, 27, 11, 85),
        trailing: Consumer<ThemeNotifier>(
          builder: (context, notifier, child) => Switch(
            value: notifier.darkTheme, 
            activeColor: const Color.fromARGB(193, 13, 14, 92),
            onChanged: (value){
              setState(() {
                notifier.toggleTheme();
              });
            }
          ),
        ),
        title: Text(text, style:  const TextStyle(color: Color.fromARGB(193, 13, 14, 92), fontSize: 25.0, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style:  const TextStyle(color: Color.fromARGB(193, 13, 14, 92), fontSize: 15.0,)),
      ),
    );
  }

  Widget divider(){
    return const Divider(
      indent: 30.0,
      endIndent: 30.0,
      height: 40.0,
      color: Color.fromARGB(193, 13, 14, 92),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            settingsItem("Theme Preference", "Light or dark theme"),
            divider(),
          ],
        ),)
    );
  }
}