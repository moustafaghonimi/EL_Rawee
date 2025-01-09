import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/auth_cubit/cubit/cubit/auth_cubit.dart';

class CustemTextFormFiled extends StatefulWidget {
  const CustemTextFormFiled(
      {super.key,
      required this.hintText,
      required this.icon,
      this.onchanged,
      this.onFieldSubmitted,
      this.validator});
  final String hintText;
  final IconData icon;
  final void Function(String)? onchanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;

  @override
  State<CustemTextFormFiled> createState() => _CustemTextFormFiledState();
}

class _CustemTextFormFiledState extends State<CustemTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        validator: widget.validator,
        onChanged: widget.onchanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        obscureText: widget.hintText == 'Password' && !authCubit.isPassword
            ? true
            : false,
        decoration: InputDecoration(
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          hintText: widget.hintText,
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.hintText == 'Password'
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      authCubit.isPassword = !authCubit.isPassword;
                    });
                  },
                  icon: Icon(
                    !authCubit.isPassword
                        ? Icons.remove_red_eye_rounded
                        : Icons.password,
                    color: !authCubit.isPassword
                        ? AppColor.backgroundColor
                        : AppColor.textButtonColor,
                  ),
                )
              : null,
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
