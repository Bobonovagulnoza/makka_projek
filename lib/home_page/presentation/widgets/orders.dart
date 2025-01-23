import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../pages/profile.dart';
import 'colors.dart';
import 'navigation_bar.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go("/");
          },
          icon: SvgPicture.asset("assets/icons/down-arrow.svg"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage("assets/images/offers/offers_5.jpg"),
                width: 100,
                height: 80,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Orders page not found !",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: AppColor.mainpagetextcolor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: "Urbanist",
              ),
            )
          ],
        ),
      ),
    );
  }
}
