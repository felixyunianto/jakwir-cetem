import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Components/list_tile.dart';
import 'package:jakwit_cetem/Screens/Home/home.dart';
import 'package:jakwit_cetem/Screens/Register/register.dart';
import 'package:jakwit_cetem/Screens/Requirements/requirements.dart';
import 'package:jakwit_cetem/Screens/UserGuide/user_guide.dart';
import 'package:jakwit_cetem/Utilities/color_hex.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 160,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Image(
                          alignment: Alignment.centerLeft,
                          image: AssetImage('assets/images/logo-dukcapil.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      FontPoppin(
                        text: "Dukcapil Kota Tegal",
                        fontSize: 14,
                        fontColor: gray,
                        fontWeight: FontWeight.bold,
                      ),
                      FontPoppin(
                          text: "Jalan Lele No.14 Kota Tegal",
                          fontSize: 14,
                          fontColor: gray),
                    ]),
              ),
              Container(
                  height: size.height,
                  color: HexColor.fromHex(blueDark),
                  child: Column(children: [
                    ListTileDrawer(
                      text: "Halaman Utama",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      image: 'assets/icons/icon-home.png',
                    ),
                    ListTileDrawer(
                        text: "Persyaratan",
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RequirementScreen();
                          }));
                        },
                        image: 'assets/icons/icon-persyaratan.png'),
                    ListTileDrawer(
                        text: "Cek Data KTP-el",
                        press: () {},
                        image: 'assets/icons/icon-search.png'),
                    ListTileDrawer(
                        text: "Panduan Penggunaan",
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return UserGuideScreen();
                          }));
                        },
                        image: 'assets/icons/icon-panduan.png'),
                    Container(color: Colors.white, height: size.height * 0.002),
                    ListTile(
                      title: FontPoppin(
                          text: "Laporan pelayanan",
                          fontSize: 14,
                          fontColor: white,
                          fontWeight: FontWeight.bold),
                    ),
                    ListTileDrawer(
                        text: "Pendaftaran Baru",
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Register();
                          }));
                        },
                        image: 'assets/icons/icon-pendaftaran-baru.png'),
                    ListTileDrawer(
                        text: "Ajuan Layanan",
                        press: () {},
                        image: 'assets/icons/icon-ajuan-layanan.png'),
                    ListTileDrawer(
                        text: "Keluar Aplikasi",
                        press: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: Text("Keluar Aplikasi"),
                                  content:
                                      Text("Yakin akan keluar dari Aplikasi"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'BATAL'),
                                      child: const Text('BATAL'),
                                    ),
                                    TextButton(
                                      onPressed: () => SystemNavigator.pop(),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                )),
                        image: 'assets/icons/icon-logout.png')
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
