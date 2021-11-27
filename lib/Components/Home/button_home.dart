import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class ButtonHome extends StatelessWidget {
  final String text, color, textColor, borderColor;
  final FontWeight fontWeight;
  final Function press;
  final double fontSize;

  const ButtonHome(
      {Key key,
      this.text,
      this.press,
      this.color,
      this.textColor,
      this.fontWeight = FontWeight.bold,
      this.fontSize, this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          // height: size.height * 0.08,
          width: size.width * 0.42,
          height: size.height * 0.08,
          padding: EdgeInsets.symmetric(horizontal : 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: HexColor.fromHex(color),
              border: Border.all(width: 5, color: HexColor.fromHex(borderColor)),
              boxShadow: [
                BoxShadow(
                  color: HexColor.fromHex(gray).withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                )
              ]),
          child: Center(
            child: FontPoppin(
                text: text,
                fontSize: fontSize,
                fontWeight: fontWeight,
                fontAlignment: TextAlign.center,
                fontColor: textColor),
          )),
    );
  }
}
