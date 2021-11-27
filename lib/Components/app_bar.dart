import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

import 'font_poppins.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: FontPoppin(text: "Jakwir Cetes", fontSize: 20, fontColor: white, fontWeight: FontWeight.bold),
        actions: [
          Container(
              width: 40,
              margin: EdgeInsets.only(right: 10),
              child:
                  Image(image: AssetImage('assets/images/logo-kota-tegal.png')))
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(color: HexColor.fromHex(blueDark))),
      );
  }
}