import 'package:flutter/material.dart';
import 'package:inventrify/constants.dart';
import 'dart:math' as math;

class LongBlueButton extends StatelessWidget {
  final String text;
  final Widget icon;
  const LongBlueButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: size.height * 0.097,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: splashBackgroundColor,
              borderRadius: BorderRadius.circular(size.height * 0.1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              icon
            ],
          ),
        ),
        Positioned(
          bottom: 70,
          right: -70,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 60 / 180),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: -80,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 50 / 180),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
      ],
    );
  }
}

class NormalBlueButton extends StatelessWidget {
  final String text;
  const NormalBlueButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: size.height * 0.097,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: splashBackgroundColor,
              borderRadius: BorderRadius.circular(size.height * 0.1)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          right: -70,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 60 / 180),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: -80,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 50 / 180),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
      ],
    );
  }
}

class WhiteButton extends StatelessWidget {
  final String text;
  const WhiteButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: size.height * 0.097,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(size.height * 0.1)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Color(0xff657E99),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          right: -70,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 60 / 180),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color(0xff657E99).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: -80,
          child: Transform(
            transform: Matrix4.rotationZ(math.pi * 50 / 180),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xff657E99).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
      ],
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xff657E99),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "x",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Text(
              "Cancel All",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: splashBackgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class PreviewButton extends StatelessWidget {
  const PreviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xffA3E4D7),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Preview",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
