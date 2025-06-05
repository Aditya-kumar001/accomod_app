import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/checkcircle.dart';
import '../../controllers/sign_in_controller.dart';

Row checkBoxSection(BuildContext context) {
  final controller = Get.find<SignInController>();
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
          // child: 
          GestureDetector(
            onTap: controller.rememberMe,
            child: checkCircle(context, controller.remember.value)
          ),
        // ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Text('Remember Me', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        GestureDetector(
          onTap: controller.useBiometric,
          child: checkCircle(context, controller.biometric.value),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Text('Use Biometric', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300
          ),
        ),
      ],
    );
  }