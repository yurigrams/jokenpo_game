import 'package:flutter/material.dart';

class Pccircle extends StatefulWidget {
  const Pccircle({super.key});

  @override
  State<Pccircle> createState() => _PccircleState();
}

class _PccircleState extends State<Pccircle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: CircleAvatar(
            radius: 40,
          ),
        )
      ],
    );
  }
}
