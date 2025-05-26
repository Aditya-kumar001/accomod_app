import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/init_forgot_controller.dart';

class InitForgotView extends GetView<InitForgotController> {
  const InitForgotView({super.key});
  
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
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  // const TextField(
                  //   decoration: InputDecoration(
                  //     icon: Icon(Icons.email),
                  //     hintText: 'Email',
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Get.toNamed(Routes.VERIFY);
                  //   },
                  //   child: Text('Forgot Password?',
                  //     style: TextStyle(
                  //       color: Colors.deepOrange[900],
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w300,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.07,
                  // ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),  
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.07
                  // ),
                  // const Text(
                  //   'or sign in using',
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w300,
                  //   ),  
                  // ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     ElevatedButton.icon(
                  //       style: ElevatedButton.styleFrom(
                  //         backgroundColor: Colors.blue,
                  //       ),
                  //       onPressed: () {},
                  //       icon: const Icon(
                  //         Icons.facebook,
                  //         color: Colors.white,
                  //       ),
                  //       label: const Text("Facebook"),
                  //     ),
                  //     ElevatedButton.icon(
                  //       style: ElevatedButton.styleFrom(
                  //         backgroundColor: Colors.red,
                  //       ),
                  //       onPressed: () {},
                  //       icon: const Icon(
                  //         Icons.g_mobiledata,
                  //         color: Colors.white,
                  //       ),
                  //       label: const Text(
                  //         "Google",
                  //         style: TextStyle(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.w300,
                  //           color: Colors.white
                  //         ),  
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 10),
                  // const Text.rich(
                  //   TextSpan(
                  //     text: "By creating an account, you agree to our ",
                  //     children: [
                  //       TextSpan(
                  //         text: "Terms",
                  //         style: TextStyle(color: Colors.teal),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  // GestureDetector(
                  //   onTap: () {
                  //     Get.toNamed(Routes.SIGN_UP);
                  //   },
                  //   child: const Text(
                  //     "Create an account? Sign Up",
                  //     style: TextStyle(color: Colors.teal),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}