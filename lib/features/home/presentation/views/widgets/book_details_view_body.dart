import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SafeArea(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 43,),
            Text("The Jungle Book",style: Styles.textStyle30.copyWith(fontFamily: 'PlayfairDisplay'),) ,
            const SizedBox(height: 6,),
            Opacity(opacity: .7,
              child: Text("M.hamza",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic
              ,fontWeight: FontWeight.w600),),
            ) ,
            const SizedBox(height: 18,),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          ],
        ),
      ),
    );
  }
}
