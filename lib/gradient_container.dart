import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {
    //..
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice_images/dice-1.png',
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
        ),
      ),
    );
  }
}
// Alternatif Solution
// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello!'),
//       ),
//     );
//   }
// }
