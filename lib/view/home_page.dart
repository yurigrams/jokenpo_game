import 'package:flutter/material.dart';

import 'package:prova_jokenpo/widgets/circle_row_widgets.dart';
import 'package:prova_jokenpo/widgets/pc_circle_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokenpo'),
        centerTitle: true,
      ),
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              const Text(
                  'Escolha Pedra, Papel ou Tesoura!!!',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              const SizedBox(height: 40,),
              const Circlerowwidgets(),
              const SizedBox(height: 30),
              const Text(''
                  'Escolha do PC!!!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox( height: 25),
              const Pccircle(),
              const SizedBox(height: 30),
              const Text(
                'Placar',
                style: TextStyle(fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}
