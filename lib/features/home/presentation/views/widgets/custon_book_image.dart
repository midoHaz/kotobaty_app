
import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/assets_manager.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15.0),
            image: const DecorationImage(
              image: AssetImage(AssetsManager.itemImage),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
