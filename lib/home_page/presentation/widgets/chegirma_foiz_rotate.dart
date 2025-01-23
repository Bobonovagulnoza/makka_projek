import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../pages/profile.dart';
import 'colors.dart';

class ChegirmaFoizRotate extends StatelessWidget {
  const ChegirmaFoizRotate({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationZ(math.pi / 4),
      child: Container(
        height: 11,
        width: 48,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: AppColor.chegirmacontainer,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "%Chegirma",
            style: TextStyle(
              color: AppColor.mainpagetextcolor,
              fontFamily: "Urbanist",
              fontSize: 7,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
