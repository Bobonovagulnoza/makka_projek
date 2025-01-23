import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class IkkiNuqtaText extends StatelessWidget {
  const IkkiNuqtaText({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.containerbordercolor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        fontFamily: "Urbanist",
      ),
    );
  }
}
