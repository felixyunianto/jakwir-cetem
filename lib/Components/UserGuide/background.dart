import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';

class BackgroundUserGuide extends StatelessWidget {
  final Widget child;
  const BackgroundUserGuide({ Key key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: size.width,
      alignment: Alignment.center,
      color : HexColor.fromHex("F1F3F6"),
      child : Stack(
        children : [
          child
        ]
      )
    );
  }
}