import 'package:bloc/bloc.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Book_model.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());
  final HomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.errorMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
