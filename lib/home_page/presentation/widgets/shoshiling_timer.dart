
import 'package:flutter/material.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/time_container.dart';
import 'ikki_nuqta_text.dart';


class ShoshilingTimer extends StatelessWidget {
  const ShoshilingTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 48,),
        TimeContainer(text: "12"),
        SizedBox(width: 5,),
        IkkiNuqtaText(text: ":"),
        SizedBox(width: 5,),
        TimeContainer(text: "24"),
        SizedBox(width: 5,),
        IkkiNuqtaText(text: ":"),
        SizedBox(width: 5,),
        TimeContainer(text: "30"),
      ],
    );
  }
}
