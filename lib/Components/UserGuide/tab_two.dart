import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/UserGuide/list_item_tab.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ListItemTab(
            textOne: "Apa itu pelapor ?",
            child: FontPoppin(
                text: "Pelapor merupakan warga yang sudah berhasil melakukan pendafaran dan akan melakukan pelaporan Akta Kelahiran, Akta Kematian, dan lain-lain tergantung pelayanan yang disediakan.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
        ListItemTab(
            textOne: "Bagaimana mengubah dan melihat data saya(pelapor) ?",
            child: FontPoppin(
                text: "Buka halaman Profil Pelapor nanti akan ditampilkan NIK, Nama Lengkap, Nomor HP, dan Alamat Email. Data yang dapat dirubah adalah Nomor HP dan Alamat Email.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
      ],
    ));
  }
}
