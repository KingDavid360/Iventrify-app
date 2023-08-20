import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:inventrify/components/text_fields.dart';
import 'package:inventrify/constants.dart';

import '../../components/Buttons.dart';
import '../bottom_nav.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  bool passwordVisibility = false;
  bool checkVisibility = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/corner_wave.png"),
          Center(
            child: Column(
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                      color: splashBackgroundColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
                sizeVer(size.height * 0.03),
                Container(
                  // height: size.height * 0.28,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomEmailField(
                            textEditingController: emailController,
                            hint: "Email Address",
                            obscure: false,
                            icon: Builder(
                              builder: (BuildContext context) {
                                if (emailController.text != null &&
                                    !EmailValidator.validate(
                                        emailController.text)) {
                                  return const Icon(Icons.check,
                                      color: splashBackgroundColor);
                                } else {
                                  return const Text('');
                                }
                              },
                            )),
                        sizeVer(20),
                        CustomTextField(
                          hint: "Passoword",
                          obscure: !passwordVisibility,
                          icon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                            icon: Icon(
                              passwordVisibility == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: splashBackgroundColor,
                            ),
                          ),
                        ),
                        sizeVer(20),
                        blueText("Forgot Password?")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                child: LongBlueButton(
                  text: 'Sign in',
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              sizeVer(size.height * 0.01),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Or',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: ' Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: ' a new account',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              sizeVer(size.height * 0.1),
            ],
          )
        ],
      ),
    );
  }
}
