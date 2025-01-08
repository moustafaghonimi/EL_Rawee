import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';

class CustemTextFormFiled extends StatelessWidget {
  const CustemTextFormFiled(
      {super.key,
      required this.hintText,
      required this.icon,
      this.onchanged,
      this.onFieldSubmitted});
  final String hintText;
  final IconData icon;
  final void Function(String)? onchanged;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        onChanged: onchanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          hintText: hintText,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.backgroundColor),
    borderRadius: BorderRadius.circular(20),
  );
}
