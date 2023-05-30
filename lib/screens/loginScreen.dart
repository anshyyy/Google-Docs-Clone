import 'package:docs/repository/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  void signInwithGoogle(WidgetRef ref) {
    ref.read(AuthRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          width: 230,
          height: 50,
          child: ElevatedButton(
            onPressed: () => signInwithGoogle(ref),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset("assets/images/google.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "Sign In with google",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
