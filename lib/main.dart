import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:playground/view/splash.dart';

void main() {
  // Kauany Arantes
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: "CodePlay", debugShowCheckedModeBanner: false, home: Splash()));
}
