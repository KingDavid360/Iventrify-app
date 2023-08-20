import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../components/Buttons.dart';
import '../../components/assets_containers.dart';
import '../../components/custom_dropdown.dart';
import '../../constants.dart';
import 'asset_preview.dart';

class Assets3Screen extends StatefulWidget {
  const Assets3Screen({Key? key}) : super(key: key);

  @override
  State<Assets3Screen> createState() => _Assets3ScreenState();
}

class _Assets3ScreenState extends State<Assets3Screen> {
  String assetCondition = "";
  String initialValue = "";
  DateTime now = DateTime.now();
  final picker = ImagePicker();
  File? _imageFile;

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDateTime = DateFormat('yyyy-MM-dd h:mm a').format(now);
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
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 40,
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
                        "Other information",
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
                  "3/3",
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
                        const AssetForm(
                          title: 'Model(Optional)',
                          subtitle: 'Enter Device Model',
                          icon: Text(
                            "",
                            style: TextStyle(height: 2.5),
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
                                      "Good",
                                      "Bad",
                                    ],
                                    onChanged: (option) {
                                      setState(() {
                                        assetCondition =
                                            option; // create this var
                                      });
                                    },
                                    hintText: '',
                                    fillColor: Colors.transparent,
                                    elevation: 2,
                                    margin:
                                        const EdgeInsetsDirectional.fromSTEB(
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
                            title: 'Invoice Date',
                            subtitle: '03-10-22',
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            )),
                        AssetForm(
                            title: 'Purchase Date & Time',
                            subtitle: '2020-03-22 12:00PM',
                            initialValue: formattedDateTime,
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            )),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 10),
                          child: Container(
                            // height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Additional Document(optional)"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          pickImage();
                                        },
                                        child: const Icon(
                                          Icons.file_upload,
                                          size: 30,
                                        ),
                                      ),
                                      const Text(
                                        "",
                                        style: TextStyle(height: 2.5),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
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
                                                  AssetPreview()));
                                    },
                                    child: PreviewButton())),
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
