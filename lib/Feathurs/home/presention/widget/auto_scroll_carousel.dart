import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'auto_scroll_item.dart';

class AutoScrollCarousel extends StatelessWidget {
  const AutoScrollCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        itemCount: 8,
        itemBuilder: (context, index, realIndex) {
          return AutoScrollItem(
            index: index,
          );
        },
        options: CarouselOptions(
          clipBehavior: Clip.hardEdge,
          animateToClosest: true,
          enableInfiniteScroll: true,
          height: MediaQuery.of(context).size.height * 0.3,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
