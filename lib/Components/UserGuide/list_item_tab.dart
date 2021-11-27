import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class ListItemTab extends StatelessWidget {
  final String textOne, textTwo;
  final Widget child;

  const ListItemTab({
    Key key,this.textOne, this.textTwo, this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: size.width * 0.1,
        height: size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red[300]),
        child: Center(
          child: FontPoppin(
              text: "Q.",
              fontSize: 16,
              fontColor: white,
              fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        width: size.width * 0.73,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontPoppin(
                text: textOne,
                fontSize: 16,
                fontColor: gray,
                fontWeight: FontWeight.w500,
                fontHeight: 1.2),
            SizedBox(height: 10),
            child
          ],
        ),
      ),
    ]);
  }
}