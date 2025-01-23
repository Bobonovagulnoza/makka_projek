import 'package:flutter/material.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/sixcantenr.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/tariffs_container.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/transport.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/transport_container.dart';
import '../pages/profile.dart';
import 'chegirmalar_teks.dart';
import 'colors.dart';
import 'foiz_chegirma.dart';
import 'line_container.dart';
import 'nonushta.dart';


class ChegirmalarContainer extends StatelessWidget {
  const ChegirmalarContainer({
    super.key,
    required this.title,
    required this.text,
    required this.text1,

  });
  final String title, text, text1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 95,
          width: 127,
          decoration: BoxDecoration(
            color: AppColor.mainpagetextcolor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: ChegirmalarText(
                  text: text,
                  text1: text1,
                ),
              ),
              Text(
                "Afzalliklar",
                style: TextStyle(
                  color: AppColor.containerinsidetextcolor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Urbanist',
                  fontSize: 7,
                ),
              ),
              TransportService(
                text: "Transport Xizmati",
                svg: 'assets/icons/down-arrow.svg',
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: NonushtaContainer(
                      text: "Nonushta",
                      svg: 'assets/icons/down-arrow.svg',
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SixContainer(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Positioned(bottom: 5, left: 38, child: LineContainer(),),
        Positioned(
          bottom: -4,
          left: 53,
          child: TransportContainer(svg: 'assets/icons/down-arrow.svg'),
        ),
        Positioned(
            top: -10, left: 30, child: TariflarContainer(text: title)),
        Positioned(
            top: 2,
            left: 2,
            child: FoizChegirma()),
      ],
    );
  }
}
