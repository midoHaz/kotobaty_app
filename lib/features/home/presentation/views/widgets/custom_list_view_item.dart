import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/assets_manager.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
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
