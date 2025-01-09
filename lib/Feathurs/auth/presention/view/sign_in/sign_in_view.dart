import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        actions: [
          TextButton(
            child: const Text('Sign Up'),
            onPressed: () {
              custemNavigationRouterReplacement(context, 'SignUpView');
            },
          )
        ],
      ),
    );
  }
}
