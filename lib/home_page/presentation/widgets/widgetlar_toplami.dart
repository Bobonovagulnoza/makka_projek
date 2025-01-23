import 'dart:ui';
import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class WidgetlarToplami extends StatelessWidget {
  const WidgetlarToplami({super.key, required this.image, required this.text});

  final image, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
                child: Image(
                  image: AssetImage(image),
                  width: 104,
                  height: 52,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: "Urbanist",
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
