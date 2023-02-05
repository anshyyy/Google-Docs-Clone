import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 100,
          height: 50,
          child: MaterialButton(
            onPressed: () {},
            color: Colors.red,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ),
    );
  }
}
