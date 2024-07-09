import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/Book_model.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}
