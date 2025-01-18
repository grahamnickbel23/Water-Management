import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  void login() {
    // try sign in user
    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size: 100,
                color: Colors.grey.shade600,
              ),

              // Email
              const SizedBox(height: 10),
              MyTextfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),

              // password
              const SizedBox(height: 10),
              MyTextfield(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true),

              // login button
              const SizedBox(height: 20),
              MyButton(
                  onTap: () {
                    print("Log in Button has pressed");
                    login();
                  },
                  heading: 'Log In'),

              // Not s user, register now
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      print("Register now has pressed");
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
