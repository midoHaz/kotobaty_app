import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kotobaty_app/core/utils/api_service.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo_imp.dart';

final getIt =GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiService>()));
}