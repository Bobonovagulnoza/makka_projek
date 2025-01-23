import 'package:flutter/material.dart';
import '../pages/profile.dart';
import 'colors.dart';

class TariflarContainer extends StatelessWidget {
  const TariflarContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 19,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.mainpagetextcolor,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
