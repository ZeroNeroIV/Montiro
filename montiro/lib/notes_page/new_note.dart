import 'package:flutter/material.dart';

class NewNote extends StatelessWidget {
  final void Function(String, String) adding;
  const NewNote(this.adding, {super.key});

  @override
  Widget build(BuildContext context) {
    String label, txt;
    TextEditingController textFieldController1 = TextEditingController(),
        textFieldController2 = TextEditingController();
    return AlertDialog(
      title: const Text('Enter Label and Text'),
      content: Column(
        children: [
          TextField(
            controller: textFieldController1,
            decoration: const InputDecoration(hintText: 'Label'),
          ),
          TextField(
            controller: textFieldController2,
            decoration: const InputDecoration(hintText: 'Text'),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            label = textFieldController1.text;
            txt = textFieldController2.text;
            adding(label, txt);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
