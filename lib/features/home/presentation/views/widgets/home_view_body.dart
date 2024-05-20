import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kotobaty_app/core/utils/styles.dart';

import '../../../../../core/utils/assets_manager.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage(AssetsManager.itemImage),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Column(
            children: [
              SizedBox(
            width:MediaQuery.of(context).size.width*.5,
                child: const Text(
                  "Harry Parry Harry Parry Harry Parry Harry Parry Harry Parry",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}



