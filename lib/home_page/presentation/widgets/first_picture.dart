import 'package:flutter/material.dart';

class FirstPicture extends StatelessWidget {
  const FirstPicture({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
            image: AssetImage(
              image,
            ),
          width: 380,
          height: 120,
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}
