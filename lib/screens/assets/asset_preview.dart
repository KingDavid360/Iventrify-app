import 'package:flutter/material.dart';
import 'package:inventrify/components/assets_containers.dart';
import 'package:inventrify/components/assets_previews_container.dart';
import 'package:inventrify/components/image_containers.dart';
import 'package:inventrify/constants.dart';
import 'package:inventrify/screens/assets/assets_confirmation.dart';

import '../../components/Buttons.dart';

class AssetPreview extends StatefulWidget {
  const AssetPreview({Key? key}) : super(key: key);

  @override
  State<AssetPreview> createState() => _AssetPreviewState();
}

class _AssetPreviewState extends State<AssetPreview> {
  final ScrollController _scrollController1 = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        title: headerText("Assets Preview"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ImageContainers(),
                  sizeHor(10),
                  ImageContainers(),
                ],
              ),
            ),
          ),
          sizeVer(20),
          Expanded(
            child: Container(
              // height: 200,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "DELL LAPTOP CORE i7",
                      style: TextStyle(
                          color: Color(0xff657E99),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    sizeVer(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CaptureContainers(
                            header: "Captured By",
                            title: "Chidozie Chidigbam",
                            subtitle: "chidozie@byteworks.com.ng"),
                        CaptureContainers(
                            header: "Captured Date",
                            title: "2023-05-02",
                            subtitle: "12:19PM"),
                      ],
                    ),
                    sizeVer(20),
                    Expanded(
                      child: Container(
                        // height: ,
                        child: RawScrollbar(
                          // thickness: 2,
                          controller: _scrollController1,
                          thumbColor: Color(0xff9FBDF6),
                          radius: Radius.circular(20),
                          thickness: 10,
                          child: ListView(
                            controller: _scrollController1,
                            children: [
                              AssetsPreviewContainer(
                                  title: "Asset No",
                                  subtitle: "BL3567",
                                  color: Color(0xff657E99).withOpacity(0.6),
                                  icon: Text("No")),
                              const AssetsPreviewContainer(
                                  title: "Description",
                                  subtitle:
                                      "DELL AIO 200 G4 CORE I3-1Oth gen, 4GB, 1TB,21.5'' Non tocuhm",
                                  color: Color(0xffA3E4D7),
                                  icon: Text("")),
                              AssetsPreviewContainer(
                                  title: "Category",
                                  subtitle: "Computer",
                                  color: Colors.yellow.shade100,
                                  icon: Text("")),
                              AssetsPreviewContainer(
                                  title: "Vendor",
                                  subtitle: "PREMIER COMPUTERS LLC",
                                  color: Colors.yellow.shade100,
                                  icon: Text("")),
                              const AssetsPreviewContainer(
                                  title: "Next Inspection Date",
                                  subtitle: "2021/12/01 17:59",
                                  color: Color(0xffF18974),
                                  icon: Icon(Icons.calendar_month_outlined)),
                              AssetsPreviewContainer(
                                  title: "Purchase Value | Current Value",
                                  subtitle: "\$ 500 | N/A",
                                  color: Color(0xff657E99).withOpacity(0.6),
                                  icon: Text("")),
                              sizeVer(20),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AssetConfirmation()));
                                  },
                                  child: NormalBlueButton(text: "Confirm"))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
