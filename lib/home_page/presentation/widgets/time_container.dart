import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 37,
      decoration: BoxDecoration(
        color: AppColor.timecontainercolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.containerbordercolor,
            fontFamily: "Urbanist",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
