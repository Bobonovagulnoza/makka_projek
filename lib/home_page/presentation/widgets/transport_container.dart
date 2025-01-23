import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';

class TransportContainer extends StatelessWidget {
  const TransportContainer({super.key, required this.svg});
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: AppColor.containerinsidetextcolor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColor.mainpagetextcolor,
              width: 2,
            )),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
    child: Container(
    width: 12,
    height: 12,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    color: AppColor.mainpagetextcolor,
    ),
      child: SvgPicture.asset(svg),
    )
    )
    );
  }
}
