import 'dart:async';

import 'package:get/get.dart';
import 'package:posttest6_2009106088_hangberkivisnugo/landing_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.off(() => LandingPage());
    });
  }
}