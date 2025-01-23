import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class SizPlus extends StatelessWidget {
  const SizPlus({super.key, required this.boyi, required this.eni});

  final double boyi, eni;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boyi,
      height: eni,
      padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.mainpagetextcolor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColor.containerinsidetextcolor,
      ),
      child: Container(
        height: 15,
        width: 29,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0.3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.mainpagetextcolor,
        ),
        child: Text(
          "6 +",
          style: TextStyle(
              color: AppColor.containerinsidetextcolor,
              fontFamily: 'Urbanist',
              fontSize: 10,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
