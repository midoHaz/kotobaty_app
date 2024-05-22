import 'package:flutter/material.dart';

import 'custon_book_image.dart';
class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(),
          );
        },separatorBuilder: (context,index){
        return const SizedBox(width: 10.0,);
      }, itemCount: 10,),
    );
  }
}
