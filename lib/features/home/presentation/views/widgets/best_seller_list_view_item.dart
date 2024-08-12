import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kotobaty_app/features/home/data/models/Book_model.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custon_book_image.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/styles.dart';
class BookIListViewItem extends StatelessWidget {
  const BookIListViewItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push("/bookDetails");
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImage(image: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: 'PlayfairDisplay'),
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                    maxLines: 2,
                    overflow:TextOverflow.ellipsis ,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(rating: bookModel.volumeInfo.averageRating??0,count: bookModel.volumeInfo.ratingsCount??0,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
