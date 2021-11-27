import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/Home/button_home.dart';
import 'package:jakwit_cetem/Components/Home/service_table.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Components/Home/background.dart';
import 'package:jakwit_cetem/Components/Home/info_home.dart';
import 'package:jakwit_cetem/Screens/Home/Other/other.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundHome(
        child: Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Container(
          width: size.width * 0.87,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: InfoHome(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: FontPoppin(
                  text: "Silahkan memilih menu pelayanan di bawah ini:",
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
                      text: "Akta Kelahiran",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Akta Kematian",
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
                      text: "KTP Elektronik",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "KIA (Kartu Identitas Anak)",
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
                      text: "Kartu Keluarga",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Perpindahan Keluar",
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
                      text: "Perpindahan Keluar Negeri",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Kedatangan WNI",
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
                      text: "Kedatangan WNA",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Akta Perkawinan",
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
                      text: "Akta Pengesahan Anak",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Akta Perceraian",
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
                      text: "Akta Pengakuan Anak",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Antrian Online",
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
                      text: "SK Lahir Mati",
                      textColor: white,
                      fontSize: 14,
                      press: () {},
                    ),
                    ButtonHome(
                      color: blue,
                      borderColor: blue,
                      text: "Pelayanan Lain",
                      textColor: white,
                      fontSize: 14,
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OtherScreen();
                        }));
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonHome(
                      color: white,
                      borderColor: yellow,
                      text: "Update",
                      textColor: blue,
                      fontSize: 14,
                      press: () {},
                    ),
                  ],
                ),
              ),
              ServiceTable()
            ],
          ),
        ),
      ),
    ));
  }
}
