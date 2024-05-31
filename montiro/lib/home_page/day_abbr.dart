// 1- Day's first 3 letters.
import 'package:flutter/material.dart';

class DayAbbr extends StatelessWidget {
  final String _day;
  const DayAbbr(this._day, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      _day.substring(0, 3),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: const Size.fromHeight(16).height,
      ),
    );
  }
}
