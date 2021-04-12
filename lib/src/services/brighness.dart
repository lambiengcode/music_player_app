import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BrighnessService {
  setBrighness() {
    if (GetPlatform.isAndroid) {
      setBrighnessFromValue(Theme.of(Get.context).brightness);
    } else {
      if (Theme.of(Get.context).brightness == Brightness.dark) {
        setBrighnessFromValue(Brightness.light);
      } else {
        setBrighnessFromValue(Brightness.dark);
      }
    }
  }

  setBrighnessFromValue(brighness) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: brighness,
        statusBarIconBrightness: brighness,
      ),
    );
  }

  initBrighness() {
    GetPlatform.isAndroid
        ? setBrighnessFromValue(Brightness.light)
        : setBrighnessFromValue(Brightness.dark);
  }
}
