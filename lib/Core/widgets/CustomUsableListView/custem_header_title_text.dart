import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class CustemHeaderTitleText extends StatelessWidget {
  const CustemHeaderTitleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(text, style: AppTextTheme.textStyleyellow24),
      ),
    );
  }
}
