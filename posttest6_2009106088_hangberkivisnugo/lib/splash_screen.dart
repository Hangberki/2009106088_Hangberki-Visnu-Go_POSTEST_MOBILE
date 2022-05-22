import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106088_hangberkivisnugo/getx_controller/splash_screen_controller.dart';

import 'landing_page.dart';

class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    SplashScreenController ssc = Get.put(SplashScreenController());
    return Scaffold(
      body: Center(
        child: Container(
          width: mediaQueryWidth,
          height: mediaQueryHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color.fromARGB(255, 87, 87, 87)])),
          child: Image.asset(
            "assets/logo.png",
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
      ),
    );
  }
}
