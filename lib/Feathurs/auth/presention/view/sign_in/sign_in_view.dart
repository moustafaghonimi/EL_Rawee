import 'package:elrawee/Feathurs/auth/presention/widget/sign_in_widget/sign_in_bottom_design.dart';
import 'package:elrawee/Feathurs/auth/presention/widget/sign_in_widget/sign_in_form_design.dart';
import 'package:flutter/material.dart';

import '../../widget/sign_in_widget/signin_top_bar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SignInTopBar()),
          SliverToBoxAdapter(child: SignInFormDesign()),
          SliverToBoxAdapter(child: SignInBottomDesign()),
        ],
      ),
    );
  }
}
