import 'package:flutter/material.dart';

// 2- Number of tasks in that day

class DayTaskCount extends StatelessWidget {
  const DayTaskCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: const Size.fromHeight(75).height,
      width: const Size.fromWidth(40).width,
      margin: const EdgeInsets.all(2),
      padding: EdgeInsets.fromLTRB(
        const Size.fromWidth(7.5).width,
        const Size.fromHeight(25).height,
        const Size.fromWidth(7.5).width,
        const Size.fromHeight(25).height,
      ),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: const Color(0xFF4B4B4B),
        border: Border.all(
          color: const Color(0xFF3D3D3D),
          width: 2.5,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Text(
        '0',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
