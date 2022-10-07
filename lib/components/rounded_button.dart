import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      this.textColor = Colors.white,
      required this.text,
      this.color = kPrimaryColor,
      required this.onPressed,
      this.height});
  final String text;
  final Color color, textColor;
  final Function() onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 60),
      // padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      width: size.width * 0.82,
      height: height ?? size.height * 0.07,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              // vertical: 20,
            ),
            textStyle: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50),
//       child: Material(
//         borderRadius: BorderRadius.circular(40.0),
//         color: color,
//         elevation: 3.0,
//         child: TextButton(
//           onPressed: onPressed,
//           child: SizedBox(
//             height: size.height * 0.05,
//             width: 300,
//             child: Center(
//               child: Text(
//                 text,
//                 style: TextStyle(color: textColor),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );