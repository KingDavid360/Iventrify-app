import 'package:flutter/material.dart';

class ImageContainers extends StatelessWidget {
  const ImageContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: 120,
      width: size.width * 0.75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 2)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(fit: BoxFit.cover, "assets/images/man_laptop.jpg"),
      ),
    );
  }
}
