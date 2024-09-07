import 'package:flutter/material.dart';

class Circlerowwidgets extends StatefulWidget {
  const Circlerowwidgets({super.key});

  @override
  State<Circlerowwidgets> createState() => _CirclerowwidgetsState();
}

class _CirclerowwidgetsState extends State<Circlerowwidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: CircleAvatar(
            radius: 40,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          child: CircleAvatar(
            radius: 40,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          child: CircleAvatar(
            radius: 40,
          ),
        ),
      ],
    );
  }
}
