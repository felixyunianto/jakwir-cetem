import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/Home/Other/background.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

import '../../font_poppins.dart';
import '../button_home.dart';

class OtherBody extends StatelessWidget {
  const OtherBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundOther(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          width: size.width * 0.87,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: FontPoppin(
                  text: "SURAT KETERANGAN : ",
                  fontSize: 14,
                  fontColor: gray,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Tempat Tinggal",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Pengganti Identitas",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Pembatalan Perceraian",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Pembatalan Perkawinan",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Pengangkatan Anak",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Lahir Mati",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "SK Pelepasan Kewarganeraan",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: white,
                      borderColor: yellow,
                      text: "Update Data",
                      textColor: blue,
                      fontSize: 14,
                      press: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
