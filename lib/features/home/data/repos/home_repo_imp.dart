import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kotobaty_app/core/errors/failure.dart';
import 'package:kotobaty_app/core/utils/api_service.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo.dart';

import '../models/Book_model.dart';


class HomeRepoImp implements HomeRepository{
  ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try{
      var response = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books= [];
      for (var item in response['items']){
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch(e){
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var response = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books= [];
      for (var item in response['items']){
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch(e){
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

}