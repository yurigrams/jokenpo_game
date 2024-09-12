import 'package:flutter/material.dart';

class Pccircle extends StatelessWidget {
  final String pcChoice;
  const Pccircle({super.key, required this.pcChoice});

  @override
  Widget build(BuildContext context) {
    IconData icon;

    switch (pcChoice) {
      case 'Pedra':
        icon = Icons.recommend;
        break;
      case 'Papel':
        icon = Icons.back_hand_sharp;
        break;
      case 'Tesoura':
        icon = Icons.cut;
        break;
      default:
        icon = Icons.help;
    }

    return Center(
      child: CircleAvatar(
        child: Icon(icon, size: 50),
        radius: 40,
        backgroundColor: Colors.green,
      ),
    );
  }
}
