import 'package:flutter/material.dart';
import 'package:montiro/app_drawer.dart';
import 'package:montiro/home_page/new_task.dart';
import 'package:montiro/home_page/show_tasks_list.dart';
import 'package:montiro/home_page/week_calender_view.dart';
import 'package:montiro/montiro_app_bar.dart';
import 'package:montiro/time_weather_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Task : <"label" : "...", "text" : "...">
  // Tasks list
  List tasks = <Map<String, String>>[
    {
      "label": "Task 1",
      "text": "task text...",
    }
  ];

  // Adding new tasks to tasks list
  void addToTasks(String label, String txt) {
    setState(() {
      tasks.add({'label': label, 'text': txt});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECf0f1),
      drawer: const AppDrawer(),
      appBar: const MontiroAppBar(),
      body: Column(
        children: [
          const TimeWeatherBar(),
          const WeekCalenderView(),
          ShowTasksList(tasks),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => NewTask(addToTasks),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
