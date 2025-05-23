import 'package:get/get.dart';

import '../controllers/init_forgot_controller.dart';

class InitForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitForgotController>(
      () => InitForgotController(),
    );
  }
}
