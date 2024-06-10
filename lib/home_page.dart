import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void onPress() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/dice-$diceNumber.png'),
        ElevatedButton(
          onPressed: onPress,
          child: const Text('Roll the dice'),
        ),
      ],
    );
  }
}
