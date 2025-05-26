import 'package:accomodation_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildAirConditionedSwitch() {
  final controller = Get.find<HomeController>();
    return Obx(() => SwitchListTile(
      title: Text('Air conditioned'),
      value: controller.isAirConditioned.value,
      onChanged: controller.isAirConditioned,
    ));
  }