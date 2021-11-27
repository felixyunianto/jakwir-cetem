import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class TabFour extends StatelessWidget {
  const TabFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      FontPoppin(
          text: "Telepon",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
      FontPoppin(
          text: "0816337680",
          fontSize: 14,
          fontColor: blue,
          fontWeight: FontWeight.w500),
      SizedBox(height : 10),
      FontPoppin(
          text: "Email",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
      FontPoppin(
          text: "xrosid@gmail.com",
          fontSize: 14,
          fontColor: blue,
          fontWeight: FontWeight.w500),
      SizedBox(height : 10),
      FontPoppin(
          text: "Twitter",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
      FontPoppin(
          text: "@disduktegalkota",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
      SizedBox(height : 10),
      FontPoppin(
          text: "Alamat",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
      FontPoppin(
          text: "Jalan Lele No. 14 TEGAL",
          fontSize: 14,
          fontColor: gray,
          fontWeight: FontWeight.w500),
    ]));
  }
}
