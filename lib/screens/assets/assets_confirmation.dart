import 'package:flutter/material.dart';
import 'package:inventrify/components/Buttons.dart';
import 'package:inventrify/components/assets_previews_container.dart';

import '../../constants.dart';
import '../bottom_nav.dart';

class AssetConfirmation extends StatelessWidget {
  const AssetConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
        ),
        title: headerText("Assets"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 300,
                  ),
                ),
                subHeaderText("Asset tagged successfully"),
                normalText(
                    "Your asset have been tagged successfully, print the bar code below and attach it to your asset.",
                    Colors.white),
                sizeVer(20),
                const BarcodeContainer(),
                sizeVer(20),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavBar()));
                    },
                    child: const WhiteButton(text: "Add another asset")),
                sizeVer(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
