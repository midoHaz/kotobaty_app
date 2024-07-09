import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custon_book_image.dart';
class BooKDetailsSection extends StatelessWidget {
  const BooKDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            image:                   'data:image/jpeg;base64,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',

          ),
        ),
        const SizedBox(height: 43,),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(fontFamily: 'PlayfairDisplay'),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "M.hamza",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
