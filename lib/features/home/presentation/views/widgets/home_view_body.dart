import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/styles.dart';
import '../../../../../core/utils/assets_manager.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50,),
          Text('Best Seller',style:Styles.titleMedium,),
          SizedBox(height: 10,),
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
        ],
      ),
    );
  }
}



