import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.color});
//   final List<Color> color;
//   @override
//   Widget build(ctx) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignment,
//           colors: color,
//         ),
//       ),
//       child: Center(
//         // input text from user

//         child: TextContainer(
//           "Hello, World!",
//         ),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.purple;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(
          // input text from user
          child: DiceRoller()),
    );
  }
}
