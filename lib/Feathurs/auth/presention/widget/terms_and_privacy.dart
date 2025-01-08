import 'package:flutter/material.dart';

class TextAndButton extends StatelessWidget {
  const TextAndButton(
      {super.key,
      required this.text1,
      required this.text2,
      required this.color1,
      required this.color2,
      this.onPressed});

  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        maxLines: 2,
        text1,
        style: TextStyle(
          color: color1,
        ),
      ),
      TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: color2,
            ),
          ))
    ]);
  }
}
