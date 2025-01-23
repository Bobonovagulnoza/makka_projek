import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class FlightCalendarContainer extends StatelessWidget {
  const FlightCalendarContainer({
    super.key,
    required this.withes,
    required this.text,
  });

  final double withes;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21,
      width: withes,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColor.mainpagetextcolor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.containerinsidetextcolor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: "Urbanist",
          ),
        ),
      ),
    );
  }
}
