import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/profile.dart';
import 'colors.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.textfilebackground,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Urbanist",
                    color: AppColor.textfieldtext,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset(
                      'assets/icons/newsearch.svg',
                      height: 20,
                      width: 20,
                      color: AppColor.textfieldtext,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset(
                      'assets/icons/filter.svg',
                      height: 20,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        SvgPicture.asset(
          'assets/icons/newnotification.svg',
          width: 17,
          height: 22,
        )
      ],
    );
  }
}
