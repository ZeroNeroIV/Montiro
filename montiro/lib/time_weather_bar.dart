import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeWeatherBar extends StatefulWidget {
  const TimeWeatherBar({super.key});

  @override
  State<TimeWeatherBar> createState() => _TimeWeatherBarState();
}

class _TimeWeatherBarState extends State<TimeWeatherBar> {
  double celsius = 0;
  late String _timeString;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss a | dd MMM, yyyy | EEEE ').format(dateTime);
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Container(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          color: const Color(0xFFE7B8FF),
          height: const Size.fromHeight(40).height,
          child: Row(
            children: [
              Text(_timeString),
              Text("$celsius C"),
            ],
          ),
        ),
        // Time - Date - Weather Forecast
        const Row(),
      ],
    );
  }
}
