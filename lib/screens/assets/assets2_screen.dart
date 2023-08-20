import 'package:flutter/material.dart';
import 'package:inventrify/screens/assets/assets3_screen.dart';

import '../../components/Buttons.dart';
import '../../components/assets_containers.dart';
import '../../components/custom_dropdown.dart';
import '../../constants.dart';
import '../bottom_nav.dart';

class Assets2Screen extends StatefulWidget {
  const Assets2Screen({Key? key}) : super(key: key);

  @override
  State<Assets2Screen> createState() => _Assets2ScreenState();
}

class _Assets2ScreenState extends State<Assets2Screen> {
  String inspectionGroup = "";
  String inspectionPolicy = "";
  String inspectionCycle = "";
  String assetLocation = "";
  String initialValue = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(width: double.infinity, "assets/images/wave.png"),
              Container(
                width: size.width,
                height: 125,
                decoration: const BoxDecoration(
                    color: splashBackgroundColor,
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(40),
                      bottomEnd: Radius.circular(15),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BottomNavBar()));
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        headerText("Assets"),
                        Text("")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          sizeVer(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Complete asset information",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Location & inspection information",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "2/3",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          sizeVer(20),
          Container(
            height: size.height * 0.7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text("Inspection Group"),
                                CustomDropDown(
                                  labelText: "AssetCategory",
                                  options: const [
                                    "Facility Manager Group",
                                    "Admin Group",
                                  ],
                                  onChanged: (option) {
                                    setState(() {
                                      inspectionGroup =
                                          option; // create this var
                                    });
                                  },
                                  hintText: '',
                                  fillColor: Colors.transparent,
                                  elevation: 2,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 15, 4),
                                  hidesUnderline: true,
                                  initialOption: initialValue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Inspection Policy"),
                                  CustomDropDown(
                                    labelText: "AssetCategory",
                                    options: const [
                                      "Image",
                                      "Audio",
                                      "Video",
                                    ],
                                    onChanged: (option) {
                                      setState(() {
                                        inspectionPolicy =
                                            option; // create this var
                                      });
                                    },
                                    hintText: '',
                                    fillColor: Colors.transparent,
                                    elevation: 2,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 15, 4),
                                    hidesUnderline: true,
                                    initialOption: initialValue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Inspection Cycle"),
                                  CustomDropDown(
                                    labelText: "AssetCategory",
                                    options: const [
                                      "Monthly",
                                      "Weekly",
                                      "Yearly",
                                    ],
                                    onChanged: (option) {
                                      setState(() {
                                        inspectionCycle =
                                            option; // create this var
                                      });
                                    },
                                    hintText: '',
                                    fillColor: Colors.transparent,
                                    elevation: 2,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 15, 4),
                                    hidesUnderline: true,
                                    initialOption: initialValue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Asset Current Location"),
                                  CustomDropDown(
                                    labelText: "AssetCategory",
                                    options: const [
                                      "Byteworks Lagos branch",
                                      "Byteworks Abuja branch",
                                      "Byteworks Enugu branch",
                                      "Byteworks Abia branch",
                                    ],
                                    onChanged: (option) {
                                      setState(() {
                                        assetLocation =
                                            option; // create this var
                                      });
                                    },
                                    hintText: '',
                                    fillColor: Colors.transparent,
                                    elevation: 2,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 15, 4),
                                    hidesUnderline: true,
                                    initialOption: initialValue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const AssetForm(
                          title: 'Inspection Media Count',
                          subtitle: '2',
                          icon: Text(
                            "",
                            style: TextStyle(height: 2.5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: CancelButton())),
                            sizeHor(10),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Assets3Screen()));
                                    },
                                    child: NextButton())),
                            // NextButton(),
                          ],
                        ),
                        sizeVer(30)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
