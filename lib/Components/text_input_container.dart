import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';

class InputContainer extends StatelessWidget {
  final Widget child;
  const InputContainer({ Key key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: HexColor.fromHex('#E3E9F2'), borderRadius: BorderRadius.circular(10)),
        child: child);

  }
}