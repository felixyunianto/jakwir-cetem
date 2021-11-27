import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';

class ButtonRounded extends StatelessWidget {
  final String text, color, textColor;
  final FontWeight fontWeight;
  final Function press;
  final double fontSize;

  const ButtonRounded(
      {Key key,
      this.text,
      this.press,
      this.color,
      this.textColor,
      this.fontWeight = FontWeight.normal, 
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                backgroundColor: HexColor.fromHex(color)),
            onPressed: press,
            child: Text(text,
                style: TextStyle(
                  color: HexColor.fromHex(textColor),
                  fontWeight : fontWeight,
                  fontSize : fontSize 
                ))),
      ),
    );
  }
}
