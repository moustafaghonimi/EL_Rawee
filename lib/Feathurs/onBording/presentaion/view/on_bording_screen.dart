import 'package:flutter/material.dart';

import 'package:elrawee/Core/widgets/space.dart';
import 'package:elrawee/Feathurs/onBording/presentaion/view/on_bording_body.dart';
import 'package:elrawee/Feathurs/onBording/presentaion/view/skip_btn.dart';
import 'package:elrawee/Feathurs/onBording/presentaion/widget/get_btn_onbording.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
        child: ListView(
          children: [
            SkipBtn(),
            OnBordingBody(
              controller: _controller,
              onPagedChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            Space(
              h: MediaQuery.of(context).size.height * 0.05,
              w: 0,
            ),
            GetBtnOnBording(
              currentIndex: currentIndex,
              controller: _controller,
            ),
          ],
        ),
      )),
    );
  }
}
