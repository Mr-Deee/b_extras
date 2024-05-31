/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

import 'color_constants.dart';

class Indicator {
  static void showLoading() {
    Get.dialog(
      const Center(
        child: NutsActivityIndicator(
          activeColor: Colors.white,
          inactiveColor: Colors.yellow,
          tickCount: 24,
          relativeWidth: 0.4,
          radius: 15,
          startRatio: 0.7,
          animationDuration: Duration(milliseconds: 500),
        ),
        // SizedBox(width: 5),
      ),
    );
  }

  static void closeLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
*/