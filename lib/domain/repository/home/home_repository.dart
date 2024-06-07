import 'package:flutter_graphql_showcase/domain/models/home/film_data_model.dart';

abstract class HomeRepository {
  Future<FilmDataModel?> fetchAllFilms();
}
