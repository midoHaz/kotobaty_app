import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/Book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custon_book_image.dart';
class BooKDetailsSection extends StatelessWidget {
  const BooKDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
image: bookModel.volumeInfo.imageLinks?.thumbnail??'',
          ),
        ),
        const SizedBox(height: 43,),
        Text(textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontFamily: 'PlayfairDisplay'),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0]??'',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          rating: bookModel.volumeInfo.averageRating??0,
          count: bookModel.volumeInfo.ratingsCount??0,
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
