import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/Requirements/background.dart';
import 'package:jakwit_cetem/Components/Requirements/card_requirements.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class BodyRequirements extends StatelessWidget {
  const BodyRequirements({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundRequirements(
        child: SingleChildScrollView(
          child: Column(
              children: [
          Container(
              width: size.width * 0.9,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: FontPoppin(
                text: "PERSYARATAN",
                fontWeight: FontWeight.bold,
                fontColor: gray,
                fontSize: 16,
              )),
          Container(
              width: size.width * 0.9,
              color: Colors.white,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  CardRequirement(textTitle: "AKTE KELAHIRAN",),
                  CardRequirement(textTitle: "AKTE KEMATIAN",),
                  CardRequirement(textTitle: "KTP ELEKTRONIK",),
                  CardRequirement(textTitle: "KIA (Kartu Identitas Anak)",),
                  CardRequirement(textTitle: "KARTU KELUARGA",),
                  CardRequirement(textTitle: "PERPINDAHAN KELUAR",),
                  CardRequirement(textTitle: "PERPINDAHAN KE LUAR NEGERI",),
                  CardRequirement(textTitle: "KEDATANGAN WNI",),
                  CardRequirement(textTitle: "KEDATANGAN WNA",),
                  CardRequirement(textTitle: "AKTA PERKAWINAN",),
                ],
              )),
              ],
            ),
        ));
  }
}
