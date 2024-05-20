import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/utils/styles.dart';
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
          Text('Best Seller',style:Styles.titleMedium,)
        ],
      ),
    );
  }
}


