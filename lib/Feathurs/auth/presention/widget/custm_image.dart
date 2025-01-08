import 'package:flutter/material.dart';

class CustmImage extends StatelessWidget {
  const CustmImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}
