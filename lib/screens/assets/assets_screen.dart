import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inventrify/components/Buttons.dart';
import 'package:inventrify/screens/assets/assets2_screen.dart';

import '../../components/assets_containers.dart';
import '../../components/custom_dropdown.dart';
import '../../constants.dart';

class AssetsScreen extends StatefulWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  State<AssetsScreen> createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
  String selectedCategory = "";
  String categoryValue = "";

  TextEditingController dateController = TextEditingController();

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
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
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
                        "Asset information",
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
                  "1/3",
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
          Expanded(
            child: Container(
              // height: size.height * 0.55,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Asset Image",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      sizeVer(15),
                      InkWell(
                        onTap: () {
                          pickImage();
                        },
                        child: _imageFile != null
                            ? Container(
                                height: size.height * 0.2,
                                width: size.width,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: _imageFile != null
                                        ? Image.file(
                                            fit: BoxFit.cover,
                                            _imageFile!,
                                          )
                                        : Container()),
                              )
                            : Container(
                                // height: size.height * 0.2,
                                width: size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black12,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.add_photo_alternate_outlined,
                                          size: 55,
                                          color: Colors.grey.shade500,
                                        ),
                                        Text(
                                          "Add image/video.",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "(Minimum of 2 and maximum of 5 images/videos",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      Column(
                        // shrinkWrap: true,
                        children: [
                          const AssetForm(
                            title: 'Asset Name',
                            subtitle: 'HP LAPTOP CORE i7',
                            icon: Text(
                              "",
                              style: TextStyle(height: 2.5),
                            ),
                          ),
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
                                  text("Asset Category"),
                                  CustomDropDown(
                                    labelText: "AssetCategory",
                                    options: const [
                                      "Electronics",
                                      "Furniture and Fixtures",
                                      "Appliances",
                                      "Vehicles",
                                      "Musical Instruments",
                                      "Sports and Fitness Equipment",
                                    ],
                                    onChanged: (option) {
                                      setState(() {
                                        selectedCategory =
                                            option; // create this var
                                      });
                                    },
                                    hintText: '',
                                    fillColor: Colors.transparent,
                                    elevation: 2,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 15, 4),
                                    hidesUnderline: true,
                                    initialOption: categoryValue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const AssetForm(
                            title: 'Purchase Value',
                            subtitle: '\$ 402',
                            icon: Text(
                              "",
                              style: TextStyle(height: 2.5),
                            ),
                          ),
                          const DescriptionAssetForm(
                            title: 'Description',
                          ),
                          const AssetForm(
                            title: 'Serial Number(Optional)',
                            subtitle: 'NW 234-254-Y253',
                            icon: Text(
                              "",
                              style: TextStyle(height: 2.5),
                            ),
                          ),
                          const AssetForm(
                            title: 'Manufacturer Name',
                            subtitle: 'HP',
                            icon: Text(
                              "",
                              style: TextStyle(height: 2.5),
                            ),
                          ),
                          CustomDateField(
                            hint: "Date of Manufacture",
                            validatorText:
                                "Enter a birthday in YYYY-MM-DD format",
                            icon: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.grey.shade500,
                            ),
                            textEditingController: dateController,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                      onTap: () {
                                        // Navigator.pop(context);
                                      },
                                      child: CancelButton())),
                              sizeHor(10),
                              Expanded(
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Assets2Screen()));
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
          ),
        ],
      ),
    );
  }
}
