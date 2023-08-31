import 'package:flutter/material.dart';
import 'dart:math'; //import ini digunakan untuk membuat gambar

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice_images/dice-1.png';
  var randomizer = Random();

  void rollDice() {
    setState(() {
      // var rollDice = Random().nextInt(6) + 1;

      var rollDice = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice_images/dice-$rollDice.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.only(top: 50),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('ROLL DICE!'),
        ),
      ],
    );
  }
}
