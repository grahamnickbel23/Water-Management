import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/pages/Introdunction/landing_page.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:myapp/components/my_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MyNotification notification = MyNotification();  // to initialize notification
  await notification.isInitializesNotification();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LandingPage(),
        ));
  }
}
