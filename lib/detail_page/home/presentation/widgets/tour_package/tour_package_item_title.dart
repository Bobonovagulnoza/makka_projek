import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/tour_package/days_in_city.dart';
import '../../../../core/utils/styles.dart';

class TourPackageItemTitle extends StatelessWidget {
  const TourPackageItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text("Umra Safari", style: AppStyles.itemSectionTitle),
        Row(
          spacing: 10,
          children: [
            DaysInCity(days: 10, city: "Madinada"),
            DaysInCity(days: 5, city: "Makkada"),
          ],
        ),
      ],
    );
  }
}
