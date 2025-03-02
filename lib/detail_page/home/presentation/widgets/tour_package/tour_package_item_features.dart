import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/tour_package/tour_package_feature.dart';
import '../../../../core/utils/styles.dart';

class TourPackageItemFeatures extends StatelessWidget {
  const TourPackageItemFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sayohat tarkibi",
          style: AppStyles.itemSectionTitle,
        ),
        Row(
          spacing: 3,
          children: [
            TourPackageFeature(text: "Sug'urta"),
            TourPackageFeature(text: "Chipta"),
            TourPackageFeature(text: "Yo'lboshchi"),
            TourPackageFeature(text: "Viza"),
            TourPackageFeature(text: "6+"),
          ],
        ),
      ],
    );
  }
}
