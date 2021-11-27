import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/button_rounded.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Components/rounded_input_text.dart';
import 'package:jakwit_cetem/Screens/Login/login.dart';
import 'package:jakwit_cetem/Components/Register/background.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class BodyRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundRegister(
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
                      textHint: "Nomor KK",
                      onChanged: (value) {},
                      type: TextInputType.number),
                  SizedBox(height: size.height * 0.02),
                  Row(children: [
                    Flexible(
                      flex : 1,
                      child : FontPoppin(
                        text: "Kode",
                        fontSize: 12,
                        fontColor: '#757C8E',
                        fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      flex : 2,
                      child : Container(
                        margin: EdgeInsets.only(left: 5),
                        width : size.width * 1,
                        height : size.height * 0.07,
                        decoration : BoxDecoration(
                          border : Border.all(
                            color : Colors.red
                          ),
                        )
                      )
                    )
                  ]),
                  SizedBox(height: size.height * 0.02),
                  RoundedTextInput(
                      textHint: "Tulis Kode",
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
                    text: "REGISTRASI",
                    color: blue,
                    textColor: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.02),
                  FontPoppin(
                        text: "Sudah mempunyai akun?",
                        fontSize: 12,
                        fontColor: '#757C8E',
                        fontWeight: FontWeight.bold),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));
                    },
                    child : FontPoppin(
                      text: "Login",
                      fontSize: 12,
                      fontColor: blue,
                      fontWeight: FontWeight.bold)
                    
                  ),
                  
                ],
              )),
        ]),
      ),
    );
  }
}
