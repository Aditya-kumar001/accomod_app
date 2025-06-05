import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

GestureDetector forgetSection() {
  return GestureDetector(
    onTap: () {
      Get.toNamed(Routes.INIT_FORGOT);
    },
    child: Text('Forgot Password?',
      style: TextStyle(
        color: Colors.deepOrange[900],
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}  