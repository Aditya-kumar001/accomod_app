import 'dart:async';

import 'package:get/get.dart';

class VerifyController extends GetxController {
  
  final resendSeconds = 30.obs;
  Timer? _timer;

  bool get canResend => resendSeconds.value == 0;

  void startResendTimer() {
    resendSeconds.value = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendSeconds.value > 0) {
        resendSeconds.value--;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    startResendTimer();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

}
