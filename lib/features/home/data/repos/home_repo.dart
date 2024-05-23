import 'package:dartz/dartz.dart';
import 'package:kotobaty_app/features/home/data/models/BookModel.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}
