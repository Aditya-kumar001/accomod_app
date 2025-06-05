import 'package:flutter/material.dart';

Container checkCircle(BuildContext context, isCheck) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      width: MediaQuery.of(context).size.width * 0.06,
      decoration: BoxDecoration(
        border: Border.all(
          color: !isCheck ?
            Colors.black
            : Colors.green,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(50),
        color: isCheck ?
          Colors.green
          : Colors.white,
      ),
      child: isCheck ? 
        Icon(Icons.check_rounded, color: Colors.white, size: 16,)
        : null,
    );
  }