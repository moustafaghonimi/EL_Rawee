import 'package:flutter/material.dart';

class IconImageCustem extends StatelessWidget {
  const IconImageCustem({super.key, required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imageName,
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}
