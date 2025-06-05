import 'package:get/get.dart';

import '../controllers/search_room_list_controller.dart';

class SearchRoomListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchRoomListController>(
      () => SearchRoomListController(),
    );
  }
}
