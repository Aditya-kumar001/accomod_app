import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_controller.dart';

class ForgotView extends GetView<ForgotController> {
  const ForgotView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "VERIFY MOBILE NUMBER",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "OTP has been sent to your mobile number, please enter it below",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) {
                    return SizedBox(
                      width: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.34
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      ),
                  ),
                )
                // const Text("Didn’t receive OTP?"),
                // const SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Obx(() => ElevatedButton(
                //       onPressed: controller.canResend
                //           ? () {
                //               controller.startResendTimer();
                //             }
                //           : null,
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.green,
                //       ),
                //       child: controller.canResend
                //           ? const Text(
                //               "Resend OTP",
                //               style: TextStyle(
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.w300,
                //               ),
                //             )
                //           : Text("Resend in ${controller.resendSeconds.value}s"),
                //     )),
                //     ElevatedButton(
                //       onPressed: () {
                //         Get.toNamed(Routes.SIGN_UP);
                //       },
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.blue,
                //       ),
                //       child: const Text(
                //         "Change number",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.w300,
                //         ),  
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
