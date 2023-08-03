import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:playground/view/splash.dart';
import 'firebase_options.dart';

void main() async {
  // Kauany Arantes
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodePlay",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
