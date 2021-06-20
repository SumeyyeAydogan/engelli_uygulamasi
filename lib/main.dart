import 'package:engelli_uygulama/tabs.dart';
import 'package:engelli_uygulama/ui/home_page.dart';
import 'package:engelli_uygulama/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff00a97d),
        fontFamily: GoogleFonts.capriola().fontFamily,
      ),
      home: Tabs(currentTab1: 0,),
    );
  }
}
