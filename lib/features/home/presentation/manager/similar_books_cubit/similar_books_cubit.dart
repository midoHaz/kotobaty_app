import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepository) : super(SimilarBooksInitial());
 
  final HomeRepository homeRepository;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepository.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(SimilarBooksFailure(failure.errorMessage)),
            (books) => emit(SimilarBooksSuccess(books)));
  }
}
