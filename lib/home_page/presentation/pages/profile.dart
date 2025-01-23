import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../widgets/colors.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "Profile",
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontFamily: "Urbanist",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: SvgPicture.asset("assets/icons/more.svg"),
          )
        ],
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage('assets/images/offers/justme.png'),
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 90,
                    child: SvgPicture.asset("assets/icons/profileone.svg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fatxullo Fayzullayev",
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: "Urbanist",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+998 93 944 15 24",
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: "Urbanist",
              ),
            ),
          ],
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/profile.svg'),
          title: Text(
            "Profilni tahrirlash",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            context.go('/editprofile');
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/newnotification.svg'),
          title: Text(
            "Bildirishnoma",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Bildirishnoma",
                content: "Bildirishnoma oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/wallet.svg'),
          title: Text(
            "To'lovlar",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "To'lovlar",
                content: "To'lovlar oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/buyurtma.svg'),
          title: Text(
            "Buyurtma tarixi",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Buyurtma tarixi",
                content: "Buyurtma tarixi oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/language.svg'),
          title: Text(
            "Ilova tili",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          subtitle: Text("Uzbek(Uz)"),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Ilova tili",
                content: "Ilova tili oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/privacy.svg'),
          title: Text(
            "Maxfiylik Siyosati",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Maxfiylik siyosati",
                content: "Maxfiylik siyosati oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/call-center.svg'),
          title: Text(
            "Call Markazi",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Call Markazi",
                content: "Call Markazi oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/sending.svg'),
          title: Text(
            "Ulashish",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Ulashish",
                content: "Ulashish oynasi hozircha mavjud emas!");
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/close.svg'),
          title: Text(
            "Chiqish",
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
          trailing: SvgPicture.asset('assets/icons/right-arrow.svg'),
          selected: true,
          selectedTileColor: Colors.white,
          focusColor: AppColor.containerbordercolor,
          enabled: true,
          onTap: () {
            showMessageBox(
                context: context,
                text: "Chiqish",
                content: "Ilovadan chiqish xoxlaysizmi!");
          },
        ),
      ]),
      bottomNavigationBar: BackBar(),
    );
  }
}

void showMessageBox(
    {required BuildContext context,
      required String text,
      required String content}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            text,
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontSize: 24,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            content,
            style: TextStyle(
              color: AppColor.containerbordercolor,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.go('/');
                },
                child:  Text("Ha")
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Yo\'q"),
            ),
          ],
        );
      });
}

class BackBar extends StatefulWidget {
  const BackBar({
    super.key,
  });

  @override
  State<BackBar> createState() => _BackBarState();
}

class _BackBarState extends State<BackBar> {
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              selected_index == 0
                  ? AppColor.mainpagetextcolor
                  : AppColor.containerbordercolor;
              context.go('/');
            },
            icon: SvgPicture.asset('assets/icons/home.svg'),
          ),
          label: "Asosiy"),
      BottomNavigationBarItem(
        icon: IconButton(
          onPressed: () {
            selected_index == 1
                ? AppColor.mainpagetextcolor
                : AppColor.containerbordercolor;
          },
          icon: SvgPicture.asset(
            'assets/icons/paketlar.svg',
          ),
        ),
        label: "Paketlar",
      ),
      BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              selected_index == 2
                  ? AppColor.mainpagetextcolor
                  : AppColor.containerbordercolor;
            },
            icon: SvgPicture.asset('assets/icons/call.svg'),
          ),
          label: "Aloqa"
      ),
      BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              selected_index == 3
                  ? AppColor.mainpagetextcolor
                  : AppColor.containerbordercolor;
            },
            icon: SvgPicture.asset('assets/icons/yurak.svg'),
          ),
          label: "Sevimlilar"
      ),
      BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              selected_index == 4
                  ? AppColor.mainpagetextcolor
                  : AppColor.containerbordercolor;
            },
            icon: SvgPicture.asset('assets/icons/profile.svg'),
          ),
          label: "Profile"
      ),
    ]);
  }
}

// class AppColor {
//   static const mainpagetextcolor=Color(0xffffffff);
//
//   static const containerbordercolor=Color(0xffffffff);
//
//   static const containerinsidetextcolor=Color(0xffffffff);
//
//   static const chegirmacontainer=Color(0xffffffff);
//
//   static const shoshilingcontainer1=Color(0xffffffff);
//
//   static const textfilebackground=Color(0xffffffff);
//
//   static const textfieldtext=Color(0xffffffff);
//
//   static const textmain=Color(0xffffffff);
//
//   static const timecontainercolor=Color(0xffffffff);
//
//   static const chegirmacolor=Color(0xffffffff);
//
//   static const sixcontainerborder=Color(0xffffffff);
// }
