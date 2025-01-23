import 'package:flutter/material.dart';

import '../pages/profile.dart';
import 'colors.dart';

class FoizChegirma extends StatelessWidget {
  const FoizChegirma({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 19,
      height: 18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(5)
        ),
        color: AppColor.chegirmacolor,
      ),
      child: Center(
        child: Text(
          "20%",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Urbanist',
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
