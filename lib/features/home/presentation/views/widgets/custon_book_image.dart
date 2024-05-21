import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  const CustomBookImage();
          },separatorBuilder: (context,index){
            return const SizedBox(width: 15.0,);
      }, itemCount: 10,),
    );
  }
}