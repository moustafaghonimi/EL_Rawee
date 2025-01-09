import 'package:elrawee/Core/routes/custem_navigation_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Card(
              child: ListTile(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  custemNavigationRouterReplacement(context, 'SignIn');
                },
                leading: Icon(Icons.logout),
                title: Text('Sign Out'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
