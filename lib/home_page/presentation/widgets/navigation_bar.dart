import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../pages/profile.dart';
import 'colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
        switch (index) {
          case 0:
            context.go("/");
            break;
          case 1:
            context.go("/cards");
            break;
          case 2:
            context.go("/orders");
            break;
          case 3:
            context.go("/wallet");
            break;
          case 4:
            context.go("/profile");
            break;
        }
      },
      selectedItemColor: AppColor.mainpagetextcolor,
      unselectedItemColor: AppColor.containerbordercolor,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            color: selectedIndex == 0
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/sumka.svg',
            color: selectedIndex == 1
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor,
          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/orders.svg',
            color: selectedIndex == 2
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor,
          ),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/wallet.svg',
            color: selectedIndex == 3
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor,
          ),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            color: selectedIndex == 4
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
