import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class ListTileDrawer extends StatelessWidget {
  final String image;
  final String text;
  final Function press;
  const ListTileDrawer({
    Key key, this.image, this.text, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      leading: Container(
        child: Image(
          image : AssetImage(image),
          alignment : Alignment.center,
          fit : BoxFit.contain,
          width : size.width * 0.05
        ),
      ),
      title : Align(
        child: FontPoppin(text : text, fontSize : 12, fontColor : white, fontWeight: FontWeight.bold),
        alignment : Alignment(-1.2, 0)
      ),
      onTap: press,
    );
  }
}