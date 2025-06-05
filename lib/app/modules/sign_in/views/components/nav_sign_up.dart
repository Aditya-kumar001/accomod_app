import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

GestureDetector navigSignUp() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.SIGN_UP);
      },
      child: const Text(
        "Create an account? Sign Up",
        style: TextStyle(color: Colors.teal),
      ),
    );
  }