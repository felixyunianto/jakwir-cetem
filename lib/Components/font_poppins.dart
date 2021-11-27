import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';

class FontPoppin extends StatelessWidget {
  final String text, fontColor, underlineColor;
  final double fontSize, fontHeight;
  final TextDecoration underLine;
  final TextDecorationStyle underlineStyle;
  final FontWeight fontWeight;
  final TextAlign fontAlignment;
  const FontPoppin({
    Key key,
    this.text,
    this.fontSize,
    this.fontColor,
    this.underLine = TextDecoration.none,
    this.underlineStyle = TextDecorationStyle.solid,
    this.underlineColor = "#000000",
    this.fontWeight = FontWeight.normal,
    this.fontAlignment = TextAlign.start, 
    this.fontHeight = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      softWrap: true,
      // textAlign: TextAlign.start,
      style: TextStyle(
          color: HexColor.fromHex(fontColor),
          fontSize: fontSize,
          height : fontHeight,
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          decoration: underLine,
          decorationStyle: underlineStyle,
          decorationColor: HexColor.fromHex(underlineColor),
          decorationThickness: 2),
    );
  }
}
