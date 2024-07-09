
import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/assets_manager.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
