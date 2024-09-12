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
          child: GestureDetector(
            onTap: (){
              print('oi');
            },
            child: CircleAvatar(
              child: Icon(Icons.recommend),
              radius: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          child: GestureDetector(
            onTap: (){
              print('oi2');
            },
            child: CircleAvatar(
              child: Icon(Icons.back_hand_sharp),
              radius: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          child: GestureDetector(
            onTap: (){
              print('oi3');
            },
            child: CircleAvatar(
              child: Icon(Icons.cut),
              radius: 40,
            ),
          ),
        ),
      ],
    );
  }
}
