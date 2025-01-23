
import 'package:flutter/material.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/siz_plus.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/tariffs_container.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/transport.dart';
import 'package:makka_travel_project/home_page/presentation/widgets/transport_container.dart';
import '../pages/profile.dart';
import 'chegirma_foiz_rotate.dart';
import 'chegirmalar_teks.dart';
import 'colors.dart';
import 'line_container.dart';
import 'nonushta.dart';


class AksiyaContainer extends StatelessWidget {
  const AksiyaContainer({
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
          height: 83,
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
                  SizPlus(boyi: 22, eni: 16),
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
            top: 10,
            left: 10,
            child: ChegirmaFoizRotate()
        ),
      ],
    );
  }
}

































// import 'package:flutter/material.dart';
//
// class AksiyaContainer extends StatelessWidget {
//   const AksiyaContainer({
//     super.key,
//     required this.title,
//     required this.text,
//     required this.text1,
//   });
//
//   final String title, text, text1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//           height: 83,
//           width: 127,
//           decoration: BoxDecoration(
//             color: Colors.grey.shade200, // `AppColor.mainpagetextcolor` o‘rniga
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 30, top: 10),
//                 child: Column(
//                   children: [
//                     Text(
//                       text,
//                       style: const TextStyle(fontSize: 10, color: Colors.black),
//                     ),
//                     Text(
//                       text1,
//                       style: const TextStyle(fontSize: 10, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 5),
//               const Text(
//                 "Afzalliklar",
//                 style: TextStyle(
//                   color: Colors.black, // `AppColor.containerinsidetextcolor`
//                   fontWeight: FontWeight.w700,
//                   fontSize: 7,
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.directions_bus, size: 16),
//                   const SizedBox(width: 5),
//                   Column(
//                     children: const [
//                       Icon(Icons.fastfood, size: 16),
//                       Text(
//                         "Nonushta",
//                         style: TextStyle(fontSize: 8),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(width: 5),
//                   const Icon(Icons.add, size: 16), // SizPlus o‘rniga
//                 ],
//               ),
//               const SizedBox(height: 10),
//             ],
//           ),
//         ),
//         Positioned(
//           bottom: 5,
//           left: 38,
//           child: Container(
//             width: 50,
//             height: 2,
//             color: Colors.grey,
//           ), // LineContainer o‘rniga
//         ),
//         Positioned(
//           bottom: -4,
//           left: 53,
//           child: const Icon(Icons.train, size: 20), // TransportContainer o‘rniga
//         ),
//         Positioned(
//           top: -10,
//           left: 30,
//           child: Text(
//             title,
//             style: const TextStyle(
//               fontSize: 10,
//               fontWeight: FontWeight.bold,
//             ),
//           ), // TariflarContainer o‘rniga
//         ),
//         Positioned(
//           top: 10,
//           left: 10,
//           child: Container(
//             padding: const EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               color: Colors.red.shade400,
//               shape: BoxShape.circle,
//             ),
//             child: const Text(
//               "30%",
//               style: TextStyle(
//                 fontSize: 8,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ), // ChegirmaFoizRotate o‘rniga
//         ),
//       ],
//     );
//   }
// }
