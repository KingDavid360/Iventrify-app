import 'package:flutter/material.dart';
import 'package:inventrify/constants.dart';

import '../../components/assets_containers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: Container(
        height: size.height * 0.1,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff4A566F),
        ),
        child: Icon(
          Icons.add_circle_outline,
          color: Colors.white,
          size: 60,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: size.width * 0.95,
                  height: size.height * 0.3,
                  decoration: const BoxDecoration(
                      color: splashBackgroundColor,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(20),
                        bottomEnd: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(color: Colors.white, Icons.menu),
                          ],
                        ),
                        Center(child: headerText("Home")),
                        sizeVer(10),
                        const Text(
                          "100",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        normalText("Normal asset", Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.25,
                ),
                child: Center(
                  child: Container(
                      width: size.width * 0.9,
                      // height: size.height * 0.3,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(20),
                            bottomEnd: Radius.circular(20),
                            topEnd: Radius.circular(20),
                            topStart: Radius.circular(20),
                          )),
                      child: const Column(
                        children: [
                          AssetsContainer(
                            title: 'Total Scanned',
                            subTitle: 'Assets can be scanned/confirmed',
                            trailing: '20',
                            icon: Icon(
                              Icons.qr_code_outlined,
                            ),
                          ),
                          Divider(thickness: 0.3, color: Colors.grey),
                          AssetsContainer(
                            title: 'Total Transferred',
                            subTitle:
                                'Approved assets to be relocated from here',
                            trailing: '0',
                            icon: Icon(
                              Icons.arrow_circle_right_outlined,
                            ),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
          sizeVer(20),
          Expanded(
            child: Container(
              width: size.width * 0.9,
              // height: size.height * 0.3,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20),
                    topEnd: Radius.circular(20),
                    topStart: Radius.circular(20),
                  )),
              child: Container(
                // height: size.height * 0.25,
                child: const Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "VIEW ALL",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AssetsTagging(
                          title: "Assets tagging",
                          subTitle: "You tagged HP LAPTOP core i7 2",
                          trailing: "2s ago",
                          icon: Icon(
                            Icons.local_offer_outlined,
                            size: 30,
                          ),
                          color: Color(0xff657E99),
                        ),
                        AssetsTagging(
                          title: "Assets tagging",
                          subTitle: "You tagged HARD Disc Ram",
                          trailing: "10s ago",
                          icon: Icon(
                            Icons.local_offer_outlined,
                            size: 30,
                          ),
                          color: Color(0xffF18974),
                        ),
                        AssetsTagging(
                          title: "Assets status update",
                          subTitle:
                              "You changed LG AIR CONDITIONER status to FAULTY...",
                          trailing: "2 days ago",
                          icon: Icon(
                            Icons.local_offer_outlined,
                            size: 30,
                          ),
                          color: Color(0xffA3E4D7),
                        ),
                        AssetsTagging(
                          title: "Assets Transfer",
                          subTitle: "You transferred HP LAPTOP-12343 to...",
                          trailing: "1 month ago",
                          icon: Icon(
                            Icons.local_offer_outlined,
                            size: 30,
                          ),
                          color: Color(0xffF18974),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          sizeVer(20),
        ],
      ),
    );
  }
}
