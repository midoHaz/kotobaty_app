import 'package:flutter/material.dart';
import 'package:kotobaty_app/core/functions/launch_url.dart';
import 'package:kotobaty_app/features/home/data/models/Book_model.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: '19.99',
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: ()async {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              text: getText(bookModel),
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffEf8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  String getText(BookModel bookmodel) {
    if(bookModel.volumeInfo.previewLink == null){
      return "Not Available";
    }else{
      return 'free Preview';
    }
  }
}
