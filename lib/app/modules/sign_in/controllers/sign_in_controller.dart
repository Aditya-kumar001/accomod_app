import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController with GetSingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<double> scaleAnimation;
  
  var remember = false.obs;
  var biometric = false.obs;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    fadeAnimation = CurvedAnimation(
      parent: animationController, 
      curve: Curves.easeIn
    );

    scaleAnimation = Tween<double>(
      begin: 0.9,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationController, 
        curve: Curves.decelerate
      )
    );

    animationController.forward();
  }

  void rememberMe () {
    remember.value = !remember.value;
  }

  void useBiometric () {
    biometric.value = !biometric.value;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

}
