import 'package:flutter/material.dart';
import 'package:montiro/clock_page/alarm_view.dart';
import 'package:montiro/clock_page/stopwatch_view.dart';
import 'package:montiro/clock_page/timer_view.dart';
import 'package:montiro/montiro_app_bar.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MontiroAppBar(),
      body: Row(
        children: [
          Column(
            children: [
              TimerView(),
              StopwatchView(),
            ],
          ),
          AlarmView(),
        ],
      ),
    );
  }
}
