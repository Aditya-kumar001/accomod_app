import 'package:flutter/material.dart';

Row thirdPartySignIn() {
    return Row(
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
          label: const Text("Facebook",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),  
          ),
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
    );
  }