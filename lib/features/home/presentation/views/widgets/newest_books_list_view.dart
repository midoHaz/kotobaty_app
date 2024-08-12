import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotobaty_app/features/home/presentation/manager/neawest_books_cubit/newest_books_cubit.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';

import 'best_seller_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess){
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookIListViewItem(bookModel: state.books[index],),
              );
            },
          );
        }else if(state is NewestBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
