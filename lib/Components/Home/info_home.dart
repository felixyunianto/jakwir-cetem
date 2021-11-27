import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class InfoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      flex : 1,
      child: Center(
        child : Container(
          width: size.width * 0.8,
          height: size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(10)
          ),
          child : Center(
            child : FontPoppin(text : "Ayo patuhi protokol kesehatan", fontSize : 12, fontWeight : FontWeight.bold, fontColor: gray)
          )
        )
      )
    );
  }
}