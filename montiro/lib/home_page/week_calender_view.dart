import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:montiro/home_page/day_column.dart';

class WeekCalenderView extends StatelessWidget {
  const WeekCalenderView({super.key});

  // Days of the week
  final List _daysOfTheWeek = const <String>[
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  @override
  Widget build(BuildContext context) {
    // 7 rows representing the days of the week.
    // Each row has one widget (DayColumn)
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background
        Container(
          width: double.infinity,
          height: const Size.fromHeight(150).height,
          decoration: const BoxDecoration(
            color: Color(0xFFCD84F1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          // Calender Data - Days of The Week
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              ..._daysOfTheWeek.map(
                (e) => Container(
                  margin: const EdgeInsets.all(5.5),
                  padding: EdgeInsets.fromLTRB(
                    const Size.fromWidth(7.5).width,
                    const Size.fromHeight(10).height,
                    const Size.fromWidth(7.5).width,
                    const Size.fromHeight(10).height,
                  ),
                  child: DayColumn(e),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
