import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class CardRequirement extends StatelessWidget {
  final String textTitle;
  const CardRequirement({
    Key key,
    this.textTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      color: HexColor.fromHex(blue),
      child: Padding(
        padding: EdgeInsets.only(top: 6.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: ExpansionTile(
          trailing: SizedBox.shrink(),
          title: FontPoppin(
            text: textTitle,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontColor: white,
          ),
          children: <Widget>[
            Text('Big Bang'),
            Text('Birth of the Sun'),
            Text('Earth is Born'),
          ],
        ),
      ),
    );
  }
}
