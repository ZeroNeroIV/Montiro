import 'package:flutter/material.dart';

// Shows all tasks
class ShowTasksList extends StatelessWidget {
  final List tasks;
  const ShowTasksList(this.tasks, {super.key});

  pressedTask(context, e) => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(e["label"]),
          content: Text(e['text']),
          actions: [
            BackButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: deviceHeight / 50,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ...tasks.map(
            (e) => TextButton(
              onPressed: () => pressedTask(context, e),
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                  Size(deviceWidth / 200, deviceHeight / 15),
                ),
                alignment: Alignment.centerLeft,
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(226, 255, 243, 111),
                ),
              ),
              child: Text(
                e["label"],
                style: TextStyle(
                  fontSize: deviceWidth / 40,
                  fontWeight: FontWeight.bold,
                  height: deviceHeight / 275,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
