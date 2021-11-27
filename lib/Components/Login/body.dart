import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/button_rounded.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Components/rounded_input_text.dart';
import 'package:jakwit_cetem/Screens/Home/home.dart';
import 'package:jakwit_cetem/Components/Login/background.dart';
import 'package:jakwit_cetem/Screens/Register/register.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FontPoppin(
                text: "JAKWIR",
                fontSize: 36,
                fontColor: '#5193F2',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: size.width * 0.02),
              FontPoppin(
                  text: "CETEM",
                  fontSize: 36,
                  fontColor: '#000000',
                  underLine: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ],
          ),
          SizedBox(height: size.height * 0.06),
          Container(
              width: size.width * 0.7,
              child: Column(
                children: [
                  Row(children: [
                    FontPoppin(
                        text: "Login Pelapor",
                        fontSize: 12,
                        fontColor: '#757C8E',
                        fontWeight: FontWeight.bold)
                  ]),
                  SizedBox(height: size.height * 0.02),
                  RoundedTextInput(
                      textHint: "NIK",
                      onChanged: (value) {},
                      type: TextInputType.number),
                  SizedBox(height: size.height * 0.02),
                  RoundedTextInput(
                      textHint: "Kata Sandi",
                      onChanged: (value) {},
                      obsure: true,
                      type: TextInputType.visiblePassword),
                  SizedBox(height: size.height * 0.02),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    FontPoppin(
                        text: "Lupa Sandi ?",
                        fontSize: 12,
                        fontColor: '#757C8E',
                        fontWeight: FontWeight.bold)
                  ]),
                  SizedBox(height: size.height * 0.05),
                  ButtonRounded(
                    text: "LOGIN",
                    color: blue,
                    textColor: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                    },
                  ),
                  SizedBox(height: size.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Register();
                      }));
                    },
                    child: FontPoppin(
                      text: "Belum mempunyai akun ?",
                      fontSize: 12,
                      fontColor: '#757C8E',
                      fontWeight: FontWeight.bold),
                  ),
                  FontPoppin(
                      text: "Pendaftaran Baru Khusus Warga Kota Tegal",
                      fontSize: 12,
                      fontColor: blue,
                      fontWeight: FontWeight.bold)
                ],
              )),
        ]),
      ),
    );
  }
}
