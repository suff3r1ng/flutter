import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';
// random
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            onPressed: rollDice,
            child: TextContainer("Roll Dice")),
      ],
    );
  }
}
