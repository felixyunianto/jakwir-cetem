import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class ServiceTable extends StatelessWidget {
  const ServiceTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontPoppin(
            text: "Jumlah Pelayanan Online",
            fontColor: green,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(
                color: HexColor.fromHex(green),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
          Container(
            child: DataTable(columns: [
              DataColumn(
                label: FontPoppin(
                  text: "Jenis",
                  fontColor: green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DataColumn(
                label: FontPoppin(
                  text: "Jenis",
                  fontColor: green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DataColumn(
                label: FontPoppin(
                  text: "Jenis",
                  fontColor: green,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ], rows: [

            ]),
          )
        ],
      ),
    );
  }
}
