import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class CustemCheckBox extends StatefulWidget {
  const CustemCheckBox({super.key});

  @override
  State<CustemCheckBox> createState() => _CustemCheckBoxState();
}

class _CustemCheckBoxState extends State<CustemCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColor.backgroundColor,
      checkColor: AppColor.primaryColor,
      side: const BorderSide(color: AppColor.backgroundColor, width: 2),
      value: value,
      onChanged: (value) {
        setState(() {
          this.value = value!;
        });
      },
    );
  }
}
