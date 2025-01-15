import 'package:elrawee/Core/routes/app_router.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:flutter/material.dart';

class RaweeApp extends StatelessWidget {
  const RaweeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: AppColor.primaryColor,
        ),
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'ELRAWEE',
    );
  }
}
