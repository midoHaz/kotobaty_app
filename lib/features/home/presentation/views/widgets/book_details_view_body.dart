import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SafeArea(
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BooKDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
