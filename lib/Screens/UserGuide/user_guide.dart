import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/UserGuide/body.dart';
import 'package:jakwit_cetem/Components/drawer.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class UserGuideScreen extends StatelessWidget {
  const UserGuideScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: FontPoppin(text: "Jakwir Cetem", fontSize: 20, fontColor: white, fontWeight: FontWeight.bold),
        actions: [
          Container(
              width: 40,
              margin: EdgeInsets.only(right: 10),
              child:
                  Image(image: AssetImage('assets/images/logo-kota-tegal.png')))
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(color: HexColor.fromHex(blueDark))),
      ),
      body : BodyUserGuide(),
      drawer: DrawerComponent(),
    );
  }
}