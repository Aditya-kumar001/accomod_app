import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/sign_in_controller.dart';
import 'center_container.dart';

Container signInForm(BuildContext context) {
  final controller = Get.find<SignInController>();
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.greenAccent, Colors.blue],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    padding: const EdgeInsets.all(20),
    child: Center(
      child: SingleChildScrollView(
        child: FadeTransition(
          opacity: controller.fadeAnimation,
          child: ScaleTransition(
            scale: controller.scaleAnimation,
            child: centerContainer(context)),
        ),
      ),
    ),
  );
}