import 'package:bloc/bloc.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo.dart';
import 'package:kotobaty_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());
  final HomeRepository homeRepository;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepository.fetchNewestBooks();
    result.fold((failure) => emit(NewestBooksFailure(failure.errorMessage)), (
        newestBooks) => emit(NewestBooksSuccess(newestBooks)));
  }
}
