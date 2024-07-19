import 'package:flutter/material.dart';

// LISt view default padding off
// difference b/e list view& column
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
