import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';

class TransportService extends StatelessWidget {
  const TransportService({
    super.key,
    required this.text,
    required this.svg,
  });

  final String text, svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107,
      height: 18,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.mainpagetextcolor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColor.containerinsidetextcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Row(
          children: [
            SvgPicture.asset(svg),
            SizedBox(
              width: 2,
            ),
            Text(
              text,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
