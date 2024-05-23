import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;
  Failure(this.errorMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioError){
    switch(dioError.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate error ');
      case DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api server canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error ');
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error , please try Again');
      default:
        return ServerFailure('Oops There was an error , please try again ');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure('Your request not found , try again later');
    }else if (statusCode==500){
      return ServerFailure('Internal server error ,try again later ');
    }else{
      return ServerFailure('Oops There was an error , please try again ');
    }
  }
}