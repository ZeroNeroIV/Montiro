import 'package:flutter/material.dart';
import 'package:montiro/home_page/day_abbr.dart';
import 'package:montiro/home_page/day_task_count.dart';

// DayColumn widget has 2 content in it:
// 1- Day's first 3 letters.
// 2- Number of tasks in that day

class DayColumn extends StatelessWidget {
  final String _day;
  const DayColumn(this._day, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DayAbbr(_day),
        const DayTaskCount(),
      ],
    );
  }
}
