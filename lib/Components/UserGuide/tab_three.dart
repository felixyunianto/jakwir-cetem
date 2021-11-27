import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/UserGuide/list_item_tab.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class TabThree extends StatelessWidget {
  const TabThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      children: [
        ListItemTab(
            textOne: "Siapa yang dapat melakukan pengajuan ? ",
            child: FontPoppin(
                text:
                    "Yang dapat melakukan pengajuan adalah pelapor yang sudah terdaftar. Terkecualli untuk pengajuan Kedatangan dapat dilakukan tanpa harus terdaftar terlebih dahulu.",
                fontSize: 12,
                fontColor: gray,
                fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
        ListItemTab(
            textOne:
                "Bagaimana alur proses pengajuan sampai dokumen diterima ?",
            child: Container(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FontPoppin(
                        text: "Alur proses pengajuan sebagai berikut : ",
                        fontSize: 12,
                        fontColor: gray,
                        fontWeight: FontWeight.w500),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "1. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor memilih data yang akan dilakukan pelaporan/pengajuan.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "2. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor melengkapi data pelaporan.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "3. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor mengupload Data Dukung Pelaporan.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "4. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor melakukan kirim Pelaporan.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FontPoppin(
                            text: "5. ",
                            fontSize: 12,
                            fontColor: gray,
                            fontWeight: FontWeight.w500),
                        Expanded(
                          child: Container(
                            child: Column(children: [
                              FontPoppin(
                                  text:
                                      "Admin pelayanan akan melakukan verifikasi dan memproses dokumen.",
                                  fontSize: 12,
                                  fontColor: gray,
                                  fontWeight: FontWeight.w500),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FontPoppin(
                                        text: "a. ",
                                        fontSize: 12,
                                        fontColor: gray,
                                        fontWeight: FontWeight.w500),
                                    Expanded(
                                        child: Container(
                                      child: FontPoppin(
                                          text:
                                              "Jika proses verifikasi ditolak/pending maka akan mendapatkan notifikasi penolakan. Silahkan lengkapi sesuai permintaan dan Kirim Ulang data pelaporan.",
                                          fontSize: 12,
                                          fontColor: gray,
                                          fontWeight: FontWeight.w500),
                                    ))
                                  ]),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FontPoppin(
                                        text: "b. ",
                                        fontSize: 12,
                                        fontColor: gray,
                                        fontWeight: FontWeight.w500),
                                    Expanded(
                                        child: Container(
                                      child: FontPoppin(
                                          text:
                                              "Jika verifikasi disetujui maka akan dilanjutkan sampai ke pencetakan Dokumen dan Siap ambil.",
                                          fontSize: 12,
                                          fontColor: gray,
                                          fontWeight: FontWeight.w500),
                                    ))
                                  ])
                            ]),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "6. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor mendapatkan notifikasi dokumen siap ambil.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "7. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor datang ke Dinas Kependudukan dan Pencatatan Sipil dengan membawa data dukung.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      FontPoppin(
                          text: "8. ",
                          fontSize: 12,
                          fontColor: gray,
                          fontWeight: FontWeight.w500),
                      Expanded(
                        child: Container(
                          child: FontPoppin(
                              text:
                                  "Pelapor mendapatkan Dokumen/Akta yang sudah diajukan.",
                              fontSize: 12,
                              fontColor: gray,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                  ],
                )))
      ],
    ));
  }
}
