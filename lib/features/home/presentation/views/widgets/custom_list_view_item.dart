import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/assets_manager.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
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
      ),
    );
  }
}
