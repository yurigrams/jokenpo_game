import 'dart:math'; // Para sortear a jogada do PC
import 'package:flutter/material.dart';
import 'package:prova_jokenpo/widgets/circle_row_widgets.dart';
import 'package:prova_jokenpo/widgets/pc_circle_avatar.dart';
import 'package:prova_jokenpo/widgets/scoreboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int scorePlayer = 0;
  int scorePc = 0;
  String playerChoice = '';
  String pcChoice = '';
  String winOrLose = '';


  void playGame(String playerMove) {
    setState(() {
      playerChoice = playerMove;

      List<String> options = ['Pedra', 'Papel', 'Tesoura'];
      pcChoice = options[Random().nextInt(3)];

      if ((playerChoice == 'Pedra' && pcChoice == 'Tesoura') ||
          (playerChoice == 'Papel' && pcChoice == 'Pedra') ||
          (playerChoice == 'Tesoura' && pcChoice == 'Papel')) {
        winOrLose = 'você venceu!!';
        scorePlayer++;
      } else if ((pcChoice == 'Pedra' && playerChoice == 'Tesoura') ||
          (pcChoice == 'Papel' && playerChoice == 'Pedra') ||
          (pcChoice == 'Tesoura' && playerChoice == 'Papel')) {
        winOrLose = 'você perdeu!!';
        scorePc++;
      } else {
        winOrLose = 'Empate!!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jokenpo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text(
                'Escolha Pedra, Papel ou Tesoura!!!',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 40),
              Circlerowwidgets(onPlayerChoice: playGame),
              const SizedBox(height: 30),
              const Text(
                'Escolha do PC!!!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 25),
              Pccircle(pcChoice: pcChoice),
              const SizedBox(height: 10),
              Text(
                  winOrLose,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 30),
              Scoreboard(scorePlayer: scorePlayer, scorePc: scorePc),
            ],
          ),
        ],
      ),
    );
  }
}
