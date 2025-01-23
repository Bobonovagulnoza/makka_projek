import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class MoreContainer extends StatelessWidget {
  const MoreContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1, 1),
            blurRadius: 3,
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.circular(100),
        color: AppColor.mainpagetextcolor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: AppColor.containerinsidetextcolor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Urbanist,'),
        ),
      ),
    );
  }
}
