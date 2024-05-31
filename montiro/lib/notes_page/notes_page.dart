import 'package:flutter/material.dart';
import 'package:montiro/montiro_app_bar.dart';
import 'package:montiro/notes_page/category_view.dart';
import 'package:montiro/notes_page/new_note.dart';
import 'package:montiro/notes_page/notes_view.dart';
import 'package:montiro/time_weather_bar.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final List notesCategories = <Map<String, Object>>[
    {
      'category': 'Category 1',
      'color': Colors.white,
      'notes labels': [],
    },
    {
      'category': 'Category 2',
      'color': Colors.yellow,
      'notes labels': [],
    },
    {
      'category': 'Category 3',
      'color': Colors.grey,
      'notes labels': [],
    },
    {
      'category': 'Category 4',
      'color': Colors.cyan,
      'notes labels': [],
    },
    {
      'category': 'Category 5',
      'color': Colors.orange,
      'notes labels': [],
    },
  ];

  final List notes = <Map<String, String>>[
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
    {
      "label": "Note 1",
      "text": "note text...",
    },
  ];

  // Adding new notes to notes list
  void addToNotes(String label, String txt) {
    setState(() {
      notes.add({'label': label, 'text': txt});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MontiroAppBar(),
      body: Column(
        children: [
          const TimeWeatherBar(),
          const Text("NOTES"),
          CategoryView(notesCategories),
          NotesView(notes),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => NewNote(addToNotes),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
