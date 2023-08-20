import 'package:flutter/material.dart';
import 'package:inventrify/constants.dart';
import 'package:inventrify/screens/signup/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: splashBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(width: double.infinity, "assets/images/wave.png"),
          Image.asset("assets/images/logo.png"),
          Image.asset(
              width: double.infinity, "assets/images/wave_inverted.png"),
        ],
      ),
    );
  }
}
