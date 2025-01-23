
import 'package:flutter/material.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/shoshiling_item.dart';

import '../pages/profile.dart';
import 'colors.dart';
import 'discount_container.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 634,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.shoshilingcontainer1,
            AppColor.shoshilingcontainer1,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 25,
              right: 17,
            ),
            child: ShoshilingItem(),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 530,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DiscountContainer(
                    makka_photo: "assets/images/offers/offers_1.jpg", makkaPhoto: '',),
                SizedBox(width: 10,),
                DiscountContainer(
                    makka_photo: "assets/images/offers/offers_1.jpg", makkaPhoto: '',),
                SizedBox(width: 10,),
                DiscountContainer(
                    makka_photo: "assets/images/offers/offers_1.jpg", makkaPhoto: '',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
