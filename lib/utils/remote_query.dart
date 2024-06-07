class RemoteQuery {
  static const String allFilmsQuery = r'''
        query  Query {
            allFilms {
              films {
                 title
                 director
                 releaseDate
              }
            }
        }
      ''';
}
