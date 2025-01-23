import 'package:flutter/material.dart';
import '../widgets/main_body_items.dart';
import '../widgets/navigation_bar.dart';

class TravelMainPage extends StatelessWidget {
  const TravelMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: MainBodyItems(),
      bottomNavigationBar: NavBar(),
    );
  }
}
