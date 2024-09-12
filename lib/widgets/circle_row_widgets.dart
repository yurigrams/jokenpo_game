import 'package:flutter/material.dart';

class Circlerowwidgets extends StatelessWidget {
  final Function(String) onPlayerChoice;
  const Circlerowwidgets({super.key, required this.onPlayerChoice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onPlayerChoice('Pedra');
          },
          child: const CircleAvatar(
            child: Icon(Icons.recommend, size: (50)),
            backgroundColor: Colors.green,
            radius: 40,
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            onPlayerChoice('Papel');
          },
          child: const CircleAvatar(
            child: Icon(Icons.back_hand_sharp, size: (50)),
            backgroundColor: Colors.green,
            radius: 40,
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            onPlayerChoice('Tesoura');
          },
          child: const CircleAvatar(
            child: Icon(Icons.cut, size: (50)),
            backgroundColor: Colors.green,
            radius: 40,
          ),
        ),
      ],
    );
  }
}
