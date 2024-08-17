import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kotobaty_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';

import 'custon_book_image.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if(state is FeaturedBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  GestureDetector(
              onTap: (){
              GoRouter.of(context).push("/bookDetails",extra: state.books[index]);
            },
              child: CustomBookImage(
                  image:state.books[index].volumeInfo.imageLinks?.thumbnail??''
              ),
            );
          }, separatorBuilder: (context, index) {
          return const SizedBox(width: 15.0,);
        }, itemCount: state.books.length,),
      );
    }else if (state is FeaturedBooksFailure){
      return CustomErrorWidget(errorMessage: state.errorMessage);
    }else{
      return const CustomLoadingIndicator();
    }
  },
);
  }
}