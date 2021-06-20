import 'dart:async';
import 'package:engelli_uygulama/ui/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  /*
  Animation animation;
  AnimationController controller;
   */

  @override
  void initState() {
    super.initState();
    /*
    controller = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animation = Tween(begin: 0.0,end: 300.0).animate(controller)..addListener(() {
      setState(() {

      });
    });
    controller.forward();
     */
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.off(() => LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Image.asset(
            'assets/logo2.png',
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            stops: [0.2, 0.6, 0.9],
            colors: [
              Color(0xff4b6786),
              Color(0xff1e3d59),
              Color(0xff001730),
            ],
          ),
        ),
      ),
    );
  }
}
