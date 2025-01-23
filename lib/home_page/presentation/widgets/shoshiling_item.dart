
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/shoshiling_timer.dart';

import '../pages/profile.dart';
import 'colors.dart';

class ShoshilingItem extends StatelessWidget {
  const ShoshilingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/discount.svg',
          width: 36,
          height: 36,
        ),
        SizedBox(width: 13,),
        Column(
          children: [
            Text(
              'Shoshiling',
              style: TextStyle(
                color: AppColor.containerinsidetextcolor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Urbanist",
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              '20% gacha chegirma',
              style: TextStyle(
                color: AppColor.containerinsidetextcolor,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: "Urbanist",
              ),
            )
          ],
        ),
        SizedBox(width: 13,),
        ShoshilingTimer()
      ],
    );
  }
}
