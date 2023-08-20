import 'package:flutter/material.dart';
import 'package:inventrify/screens/assets/assets2_screen.dart';
import 'package:inventrify/screens/assets/assets3_screen.dart';
import 'package:inventrify/screens/assets/assets_confirmation.dart';
import 'package:inventrify/screens/assets/assets_screen.dart';
import 'package:inventrify/screens/bottom_nav.dart';
import 'package:inventrify/screens/home/home_screen.dart';
import 'package:inventrify/screens/assets/asset_preview.dart';
import 'package:inventrify/screens/signup/signup_screen.dart';
import 'package:inventrify/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
