import 'package:flutter/material.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/auth_cubit/cubit/cubit/auth_cubit.dart';

class CustemCheckBox extends StatefulWidget {
  const CustemCheckBox({super.key});

  @override
  State<CustemCheckBox> createState() => _CustemCheckBoxState();
}

class _CustemCheckBoxState extends State<CustemCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

    return Checkbox(
      activeColor: AppColor.backgroundColor,
      checkColor: AppColor.primaryColor,
      side: const BorderSide(color: AppColor.backgroundColor, width: 2),
      value: value,
      onChanged: (value) {
        setState(() {
          this.value = value!;
          authCubit.checkBoxtermsAndConditionsValue = value;
        });
      },
    );
  }
}
