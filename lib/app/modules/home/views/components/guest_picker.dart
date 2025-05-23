import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildGuestPicker(controller) {
    return Obx(() => ListTile(
      leading: Icon(Icons.people),
      title: Text('Guests'),
      subtitle: Text('${controller.adults.value} Adults, ${controller.children.value} Children, ${controller.rooms.value} room'),
      onTap: () => Get.bottomSheet(guestPickerSheet(controller)),
    ));
  }

  Widget guestPickerSheet(dynamic controller) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _numberPicker(
            'Adults',
            controller.adults
          ),
          _numberPicker(
            'Children', 
            controller.children
          ),
          _numberPicker(
            'Rooms', 
            controller.rooms
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.back(),
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),  
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _numberPicker(String label, RxInt value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w300
          )
        ),
        Obx(() => Row(
          children: [
            IconButton(onPressed: () => value.value = (value.value - 1).clamp(0, 10), icon: Icon(Icons.remove)),
            Text(value.value.toString()),
            IconButton(onPressed: () => value.value++, icon: Icon(Icons.add)),
          ],
        )),
      ],
    );
  }