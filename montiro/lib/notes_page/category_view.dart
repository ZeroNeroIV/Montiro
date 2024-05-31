import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final List notesCategories;
  const CategoryView(this.notesCategories, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: const Size.fromHeight(50).height,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...notesCategories.map(
            (e) => Container(
              margin: const EdgeInsets.all(2.5),
              padding: const EdgeInsets.all(5.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: e['color'] as Color,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(e['category']),
              ),
            ),
          )
        ],
      ),
    );
  }
}
