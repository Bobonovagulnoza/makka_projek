import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';
class Sugurta_and_chipta extends StatelessWidget {
  const Sugurta_and_chipta({
    super.key,
    required this.svg,
    required this.text,
    required this.widths
  });

  final String svg, text;
  final double widths;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widths,
      height: 19,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Row(
          children: [
            SvgPicture.asset(svg),
            SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AviaChipta extends StatelessWidget {
  const AviaChipta({super.key, required this.svg1, required this.text1});

  final svg1, text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 19,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Row(
          children: [
            SvgPicture.asset(svg1),
            SizedBox(width: 2,),
            Text(
              text1,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Viza extends StatelessWidget {
  const Viza({super.key, required this.svg2, required this.text2});

  final svg2, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 19,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Row(
          children: [
            SvgPicture.asset(svg2),
            SizedBox(width: 2,),
            Text(
              text2,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
      ),
    );
  }
}


