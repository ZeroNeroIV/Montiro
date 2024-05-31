import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  final List appPages = const <String>[
    'Home',
    'Clock',
    'Notes',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...appPages.map(
            (e) => ListTile(
              title: TextButton(
                child: Text(e),
                onPressed: () => Navigator.pushNamed(context, e),
              ),
            ),
          )
        ],
      ),
    );
  }
}
