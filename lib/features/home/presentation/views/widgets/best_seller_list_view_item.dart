import 'package:flutter/material.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/book_rating.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/styles.dart';
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry Parry Harry Parry Harry Parry Harry Parry Harry Parry",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20
                        .copyWith(fontFamily: 'PlayfairDisplay'),
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                const Text(
                  "M.hamza",
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 ',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
