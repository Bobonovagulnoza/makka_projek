import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';

class HeartContainer extends StatelessWidget {
  const HeartContainer({
    super.key,
    required this.svg,
  });

  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColor.mainpagetextcolor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
