import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class LineContainer extends StatelessWidget {
  const LineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 1,
      decoration: BoxDecoration(color: AppColor.containerinsidetextcolor, ),
    );
  }
}
