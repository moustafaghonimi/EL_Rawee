import 'package:elrawee/Feathurs/home/presention/widget/custom_catogery_item.dart';
import 'package:flutter/material.dart';

class CustomCatogery extends StatelessWidget {
  const CustomCatogery({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.24,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          CustomCatogryItem(),
          CustomCatogryItem(),
          CustomCatogryItem(),
          CustomCatogryItem(),
          CustomCatogryItem(),
          CustomCatogryItem(),
          CustomCatogryItem(),
        ],
      ),
    );
  }
}
