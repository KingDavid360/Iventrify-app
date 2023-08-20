import 'package:flutter/material.dart';

import '../constants.dart';

class AssetsPreviewContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final Widget icon;
  const AssetsPreviewContainer(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.color,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          visualDensity: VisualDensity(horizontal: -4, vertical: 0),
          leading: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  // color: Color(0xff657E99).withOpacity(0.5),
                  color: color,
                  shape: BoxShape.circle),
              child: Center(
                child: icon,
              ),
            ),
          ),
          title: normalText(title, Colors.black),
          subtitle: text(subtitle),
        ),
        Divider(thickness: 1),
      ],
    );
  }
}

class BarcodeContainer extends StatelessWidget {
  const BarcodeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Bar Code",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.print_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                        sizeHor(5),
                        Text("Print"),
                        sizeHor(10),
                        Icon(
                          Icons.save,
                          color: Colors.grey,
                          size: 20,
                        ),
                        sizeHor(5),
                        Text("Save"),
                        sizeHor(10),
                        Icon(
                          Icons.share,
                          color: Colors.grey,
                          size: 20,
                        ),
                        sizeHor(5),
                        Text("Share"),
                      ],
                    )
                  ],
                )
              ],
            ),
            sizeVer(10),
            Image.asset("assets/images/barcode.png")
          ],
        ),
      ),
    );
  }
}
