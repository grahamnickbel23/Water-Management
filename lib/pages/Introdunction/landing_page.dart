import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/pages/Introdunction/learning_page01.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // welcome text
              const Text(
                'Welcome !!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // landing page animation
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Lottie.network(
                  'https://lottie.host/89baa7c7-0d4e-4d83-b2a7-b72561ddb304/aarrtCkIwJ.json',
                  width: 300,
                  height: 300,
                ),
              ),

              // Introductary statement
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Water Controller, a smart home water management system',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),

              // Start Button
              const SizedBox(height: 25),

              MyButton(
                  onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LearningPage01()),
                        )
                      },
                  heading: 'Get Start')
            ],
          ),
        ));
  }
}
