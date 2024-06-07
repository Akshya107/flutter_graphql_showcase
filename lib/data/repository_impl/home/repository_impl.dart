import 'package:flutter_graphql_showcase/data/data_sources/api_services.dart';
import 'package:flutter_graphql_showcase/domain/models/home/film_data_model.dart';
import 'package:flutter_graphql_showcase/domain/repository/home/home_repository.dart';
import 'package:flutter_graphql_showcase/utils/remote_query.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

class HomeRepositoryImpl implements HomeRepository {
  ApiServices apiServices = GetIt.I<ApiServices>();

  @override
  Future<FilmDataModel?> fetchAllFilms() async {
    try {
      QueryResult queryResult =
          await apiServices.fetchFromQuery(query: RemoteQuery.allFilmsQuery);
      if (queryResult.data != null) {
        FilmDataModel filmDataModel = FilmDataModel.fromJson(queryResult.data!);
        return filmDataModel;
      } else {
        return null;
      }
    } catch (error) {
      rethrow;
    }
  }
}
