import 'package:flutter_graphql_showcase/data/data_sources/api_services.dart';
import 'package:flutter_graphql_showcase/data/repository_impl/home/repository_impl.dart';
import 'package:flutter_graphql_showcase/domain/repository/home/home_repository.dart';
import 'package:get_it/get_it.dart';

class DependencyInjection {
  final getIt = GetIt.I;

  Future<void> init() async {
    getIt.registerSingleton<ApiServices>(ApiServices());
    getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl());
  }
}
