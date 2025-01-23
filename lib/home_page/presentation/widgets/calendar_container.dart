import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({
    super.key,
    required this.svg,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String svg, text, text1, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: AppColor.mainpagetextcolor,
          width: 2,
        ),
        color: AppColor.containerinsidetextcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.5, vertical: 0.5),
        child: Row(
          children: [
            SvgPicture.asset(svg),
            SizedBox(
              width: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: AppColor.mainpagetextcolor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist',
                    height: 1,
                  ),
                ),
                Text(
                  text1,
                  style: TextStyle(
                    color: AppColor.mainpagetextcolor.withValues(alpha: 0.5),
                    fontSize: 4,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist',
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(width: 2,),
            Text(
              text2,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Urbanist',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
