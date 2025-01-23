import 'package:flutter/material.dart';


import '../pages/profile.dart';
import 'colors.dart';

class SixContainer extends StatelessWidget {
  const SixContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          )),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
          width: 29,
          height: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.containerinsidetextcolor,
              border: Border.all(width: 2, color: AppColor.sixcontainerborder)
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.5, horizontal: 0.5),
            height: 12,
            width: 18,
            decoration: BoxDecoration(color: AppColor.mainpagetextcolor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "6 +",
                style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontFamily: 'Urbanist',
                    fontSize: 6,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
      ),
    );
  }
}
