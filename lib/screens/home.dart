import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) =>  HomeScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signed in'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
          },
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
