import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button.dart';
import 'check_box_section.dart';
import 'forget.dart';
import 'nav_sign_up.dart';
import 'other_sign_up.dart';

Container centerContainer(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.75,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Email',
          ),
        ),
        const SizedBox(height: 15),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Password',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Obx(() => checkBoxSection(context),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        forgetSection(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        signInButton(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07
        ),
        const Text(
          'or sign in using',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),  
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02
        ),
        thirdPartySignIn(),
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
        navigSignUp()
      ],
    ),
  );
}
