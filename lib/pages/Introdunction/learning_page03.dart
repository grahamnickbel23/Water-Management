import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/components/my_button.dart';
import 'package:myapp/pages/Introdunction/loading_page.dart';
import 'package:myapp/pages/auth_gate.dart';

class LearningPage03 extends StatefulWidget {
  const LearningPage03({super.key});

  @override
  State<LearningPage03> createState() => _LearningPage03State();
}

class _LearningPage03State extends State<LearningPage03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcome Text
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Let\'s Go !!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 90, 88, 88),
                  fontSize: 30,
                ),
              ),
            ),
            // animation of learning Page 03
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Lottie.network(
                'https://lottie.host/c48c2126-a85a-457d-9cb6-52ee9f8edba1/Q4ci5m0T5b.json',
                width: 300,
                height: 300
              ),
            ),

            // Data Annlytics
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'with repeated use app atarts to maintain your daily water data and upon analysing that provide you predictive information about when you may need to take out water',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 78, 78),
                  fontSize: 20,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),

            // Next Buton
            const SizedBox(height: 25),

            MyButton(
              onTap: () => {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoadingPage()),
                        ),
                Future.delayed(const Duration(seconds: 5),(){
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthGate()),
                        );
                })
              }, 
              heading: '  Next  '
            )
          ],
        ),
      ),
    );
  }
}
