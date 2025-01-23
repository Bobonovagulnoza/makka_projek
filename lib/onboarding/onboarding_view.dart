import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../detail_page/core/utils/colors.dart';

class OnboradingPagesV2 extends StatefulWidget {
  const OnboradingPagesV2({super.key});

  @override
  State<OnboradingPagesV2> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboradingPagesV2> {
  int selected_index = 0;
  static const List<String> words = [
    "We provide high quality products just for you",
    "Your satisfaction is our number one priority",
    "Let's fulfill your house needs with Funica right now!",
  ];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() {
            selected_index = index;
          }),
          children: [
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_2.png'),
              fit: BoxFit.cover,
            ),
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_3.png'),
              fit: BoxFit.cover,
            ),
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_4.png'),
              fit: BoxFit.cover,
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 330,
          padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                words[selected_index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 8,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List<Widget>.generate(
                        words.length,
                        (index) => AnimatedContainer(
                          width: selected_index == index ? 16 : 4,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: selected_index == index
                                ? Colors.teal
                                : Colors.black.withValues(alpha: 0.5),
                          ),
                          duration: Duration(milliseconds: 300),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (selected_index < words.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  }
                },
                child: Text(
                  selected_index == words.length - 1 ? "Boshlash" : "Keyingi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    Color(0xFF3BB77E),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  fixedSize: MaterialStateProperty.all(
                    Size(380, 58),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
