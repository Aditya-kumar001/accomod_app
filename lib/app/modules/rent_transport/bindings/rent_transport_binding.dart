import 'package:get/get.dart';

import '../controllers/rent_transport_controller.dart';

class RentTransportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RentTransportController>(
      () => RentTransportController(),
    );
  }
}
