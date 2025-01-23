import 'package:flutter/material.dart';
import '../pages/profile.dart';
import 'colors.dart';

class ChegirmalarText extends StatelessWidget {
  const ChegirmalarText({
    super.key,
    required this.text,
    required this.text1,
  });

  final String text, text1;

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: AppColor.containerinsidetextcolor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Urbanist',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                text1,
                style: TextStyle(

                  color: AppColor.containerinsidetextcolor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Urbanist',
                  fontSize: 9,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          SizedBox(width: 2,),
        ],
      );
  }
}
