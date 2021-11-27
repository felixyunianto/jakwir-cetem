import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/UserGuide/background.dart';
import 'package:jakwit_cetem/Components/UserGuide/tab_four.dart';
import 'package:jakwit_cetem/Components/UserGuide/tab_one.dart';
import 'package:jakwit_cetem/Components/UserGuide/tab_three.dart';
import 'package:jakwit_cetem/Components/UserGuide/tab_two.dart';
import 'package:jakwit_cetem/Components/font_poppins.dart';
import 'package:jakwit_cetem/Utilities/colors.dart';

class BodyUserGuide extends StatelessWidget {
  const BodyUserGuide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundUserGuide(
        child: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.2),
              offset: Offset(0, 2))
        ]),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          DefaultTabController(
              length: 4,
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.4,
                      child: TabBar(
                        labelColor: Colors.green,
                        indicatorColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        isScrollable: true,
                        tabs: [
                          Tab(
                              icon: Icon(
                            Icons.person_add,
                            size: 18,
                          )),
                          Tab(
                              icon: Icon(
                            Icons.person,
                            size: 18,
                          )),
                          Tab(
                              icon: Icon(
                            Icons.description_sharp,
                            size: 18,
                          )),
                          Tab(
                              icon: Icon(
                            Icons.phone,
                            size: 18,
                          )),
                        ],
                      ),
                    ),
                    Container(
                        height: size.height,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          child: TabBarView(children: <Widget>[
                            TabOne(),
                            TabTwo(),
                            TabThree(),
                            TabFour(),
                          ]),
                        ))
                  ])),
        ]),
      ),
    ));
  }
}
