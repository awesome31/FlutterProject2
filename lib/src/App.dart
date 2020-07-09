import 'package:flutter/material.dart';
import './widgets/LoginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
