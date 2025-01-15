import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: AppColor.primaryColor,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
            ),
            Spacer(),
            Text(AppStrings.appName, style: AppTextTheme.textStyleYellowBold20)
          ],
        ),
      ],
    );
  }
}
