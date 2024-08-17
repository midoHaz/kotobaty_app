import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobaty_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';

import 'custon_book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    image:
                      state.books[index].volumeInfo.imageLinks?.thumbnail??''
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10.0,
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
