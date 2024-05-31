import 'package:flutter/material.dart';

class MontiroAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MontiroAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Montiro"),
      bottomOpacity: 0.2,
      backgroundColor: const Color(0xFFC56CF0),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55.0);
}
