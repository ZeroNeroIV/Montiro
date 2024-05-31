import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  final List notes;
  const NotesView(this.notes, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Size.fromHeight(2 * MediaQuery.of(context).size.height / 3 + 50)
          .height,
      child: ListView(
        shrinkWrap: true,
        children: [
          ...notes.map(
            (e) => Container(
              margin: const EdgeInsets.all(5.5),
              padding: const EdgeInsets.all(5.5),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(e['label']),
                      content: Text(e['text']),
                    ),
                  );
                },
                child: Text(e['label']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
