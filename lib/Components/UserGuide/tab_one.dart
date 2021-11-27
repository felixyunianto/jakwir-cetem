import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/UserGuide/list_item_tab.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class TabOne extends StatelessWidget {
  const TabOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        ListItemTab(
            textOne: "Siapa yang dapat melakukan pendaftaran ?",
            child: FontPoppin(
                text:
                    "Yang dapat melakukan pendaftaran adalah warga yang terdaftar di database kependudukan Kota Tegal dan berusia 17 tahun ke atas.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
        ListItemTab(
            textOne:
                "Apa yang perlu dipersiapkan sebelum melakukan pendaftaran ?",
            child: FontPoppin(
                text: "Nomor NIK dan Nomor HP yang Aktif.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
        ListItemTab(
            textOne: "Bagaimana jika NIK saya tidak terdaftar ?",
            child: FontPoppin(
                text:
                    "Jika NIK tidak terdaftar cek kembali NIK pada KTP-el dan Kartu Keluarga dipastikan harus sama. Atau dapat langusng ke Dinas Kependudukan dan Pencatatan Sipil Kota Tegal untuk konfirmasi.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
        ListItemTab(
            textOne:
                "Bagaimana jika muncul peringatan NIK sudah terdaftar padahal saya belum pernah melakukan pendaftaran ?",
            child: FontPoppin(
                text:
                    "Silahkan datang ke Dinas Kependudukan dan Pencatatan Sipil Kota Tegal dengan membawa Asli KTP dan Kartu Keluarga untuk pengecekan dan konfirmasi data.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
      ]),
    );
  }
}
