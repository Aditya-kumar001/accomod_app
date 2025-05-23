import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var selectedTab = 'Hotels'.obs;
  var location = ''.obs;
  var checkInDate = Rxn<DateTime>();
  var checkOutDate = Rxn<DateTime>();
  var adults = 0.obs;
  var children = 0.obs;
  var rooms = 0.obs;
  var isAirConditioned = true.obs;
  final showPreference = false.obs;

  void showPreferenceValue () {
    showPreference.value = !showPreference.value;
  }

  void selectTab(String tab) {
    selectedTab.value = tab;
  }

  void updateLocation(String loc) {
    location.value = loc;
  }

  void updateDate(bool isCheckIn, DateTime date) {
    if (isCheckIn) {
      checkInDate.value = date;
    } else {
      checkOutDate.value = date;
    }
  }

  void updateGuests({required int a, required int c, required int r}) {
    adults.value = a;
    children.value = c;
    rooms.value = r;
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
