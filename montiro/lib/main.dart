import 'package:flutter/material.dart';
import 'package:montiro/clock_page/clock_page.dart';
import 'package:montiro/home_page/home_page.dart';
import 'package:montiro/notes_page/notes_page.dart';
import 'package:montiro/settings_page/settings_page.dart';

void main() => runApp(const Montiro());

class Montiro extends StatelessWidget {
  const Montiro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Home',
      routes: {
        'Home': (context) => HomePage(),
        'Clock': (context) => const ClockPage(),
        'Notes': (context) => const NotesPage(),
        'Settings': (context) => const SettingsPage(),
      },
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
