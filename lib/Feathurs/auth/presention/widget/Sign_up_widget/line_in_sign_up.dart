import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class LineInSignUP extends StatelessWidget {
  const LineInSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.formColor,
            offset: const Offset(0, 0),
            blurRadius: 10,
          ),
        ],
        color: AppColor.formColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.03,
      ),
    );
  }
}
