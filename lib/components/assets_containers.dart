import 'package:flutter/material.dart';
import 'package:inventrify/components/custom_dropdown.dart';
import 'package:inventrify/constants.dart';
import 'package:intl/intl.dart';

class AssetsContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String trailing;
  final Widget icon;
  const AssetsContainer(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.trailing,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: icon,
            ),
          ),
          sizeHor(20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      trailing,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AssetsTagging extends StatelessWidget {
  final String title;
  final String subTitle;
  final String trailing;
  final Widget icon;
  final Color color;
  const AssetsTagging(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.trailing,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: icon,
                ),
              ),
              sizeHor(20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: splashBackgroundColor,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          trailing,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        subTitle,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AssetForm extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  final String? initialValue;
  const AssetForm(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Container(
        // height: 200,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child:
              // text(title),
              // normalText(subtitle, Colors.black),
              TextFormField(
            // keyboardType: keyboardTpe,
            // controller: textEditingController,
            initialValue: initialValue,
            decoration: InputDecoration(
              // suffixIcon: icon,
              labelText: title,
              labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionAssetForm extends StatelessWidget {
  final String title;
  const DescriptionAssetForm({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Container(
        // height: 200,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                    ),
                  )),
              Container(
                height: 100,
                width: size.width * 0.8,
                color: Colors.grey.shade200,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    // controller: textEditingController,
                    decoration: InputDecoration(
                      // suffixIcon: icon,
                      // labelText: title,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    maxLines: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDateField extends StatefulWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType? keyboardTpe;
  final Icon? icon;
  final String? validatorText;
  const CustomDateField(
      {Key? key,
      required this.hint,
      required this.textEditingController,
      this.keyboardTpe,
      this.icon,
      this.validatorText})
      : super(key: key);

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  DateTime pickedDate = DateTime.now();
  final inputFormat = DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: TextFormField(
            controller: widget.textEditingController,
            validator: (value) => (value == null || value.isEmpty) &&
                    (inputFormat.format(pickedDate) != value)
                ? "${widget.validatorText}"
                : null,
            decoration: InputDecoration(
                suffixIcon: widget.icon,
                labelText: widget.hint,
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
            onTap: () async {
              pickedDate = (await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2120)))!;
              if (pickedDate != null) {
                setState(() {
                  widget.textEditingController.text =
                      DateFormat('dd-MM-yyyy').format(pickedDate!);
                });
              }
            },
          ),
        ),
      ),
    );
  }
}

class CaptureContainers extends StatelessWidget {
  final String header;
  final String title;
  final String subtitle;
  const CaptureContainers(
      {Key? key,
      required this.header,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      // height: 140,
      decoration: BoxDecoration(
        color: Color(0xffB3C8EE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            sizeVer(20),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            sizeVer(10),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
