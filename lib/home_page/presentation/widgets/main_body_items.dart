
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/text_field.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/texts_main.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/widgetlar_toplami.dart';
import 'bottom_container.dart';
import 'colors.dart';
import 'first_picture.dart';
import 'maincontainer.dart';

class MainBodyItems extends StatefulWidget {
  MainBodyItems({super.key});

  @override
  State<MainBodyItems> createState() => _MainBodyItemsState();
}

class _MainBodyItemsState extends State<MainBodyItems> {
  final List<String> images = [
    "assets/images/places/makka.png",
    "assets/images/places/paris.png",
    "assets/images/places/dubai.png",
    "assets/images/places/malayziya.png"
  ];

  int current_page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 24),
              child: TextFieldItem(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 24),
              child: Container(
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        onPageChanged: (index) {
                          setState(() {
                            current_page = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return FirstPicture(
                            image: images[index],
                          );
                        },
                      ),
                      Positioned(
                        bottom: 12,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            height: 8,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.containerinsidetextcolor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List<Widget>.generate(
                                  images.length,
                                      (index) => AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 4,
                                    width: current_page == index ? 16 : 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: current_page == index
                                          ? AppColor.mainpagetextcolor
                                          : AppColor.containerbordercolor
                                          .withValues(alpha: 0.5),
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: TextsMain(text: "Mashxur Joylar"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Container(
                height: 60,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  WidgetlarToplami(
                      image: 'assets/images/places/paris.png', text: "Parij"),
                  SizedBox(
                    width: 7,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go("/sevimlilar");
                    },
                    child: WidgetlarToplami(
                      image: 'assets/images/places/makka.png',
                      text: "Makka",
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  WidgetlarToplami(
                      image: 'assets/images/places/malayziya.png',
                      text: "Malayziya"),
                  SizedBox(
                    width: 7,
                  ),
                  WidgetlarToplami(
                      image: 'assets/images/places/dubai.png', text: "Dubai"),
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MainContainer(),
            SizedBox(
              height: 15,
            ),
            Center(
                child: BottomContainer(
                    makka_photo: "assets/images/offers/offers_1.jpg")),
          ],
        ),
      ]),
    );
  }
}
