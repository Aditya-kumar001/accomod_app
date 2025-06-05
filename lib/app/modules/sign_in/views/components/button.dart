import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

ElevatedButton signInButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: () {
        Get.toNamed(Routes.HOME);
      },
      child: const Text(
        'Sign In',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),  
      ),
    );
  }

  