import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  
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
              height: MediaQuery.of(context).size.height * 0.7,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Full Name',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Mobile Number',
                      // prefixText: '+225 ',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.VERIFY);
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),  
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),
                  const Text(
                    'or sign in using',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),  
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.white,  
                        ),
                        label: const Text("Facebook"),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.g_mobiledata,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                          ),  
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      text: "By creating an account, you agree to our ",
                      children: [
                        TextSpan(
                          text: "Terms",
                          style: TextStyle(color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                    child: const Text(
                      "Already have an account? Sign In",
                      style: TextStyle(color: Colors.teal),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}