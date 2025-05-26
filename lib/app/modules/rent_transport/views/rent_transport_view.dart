import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rent_transport_controller.dart';

class RentTransportView extends GetView<RentTransportController> {
  const RentTransportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RentTransportView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RentTransportView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
