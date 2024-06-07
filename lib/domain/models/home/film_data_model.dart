class FilmDataModel {
  FilmsConnection allFilms;

  FilmDataModel({required this.allFilms});

  factory FilmDataModel.fromJson(Map<String, dynamic> json) {
    return FilmDataModel(
      allFilms: FilmsConnection.fromJson(json['allFilms']),
    );
  }
}

class FilmsConnection {
  List<Film> films;

  FilmsConnection({required this.films});

  factory FilmsConnection.fromJson(Map<String, dynamic> json) {
    return FilmsConnection(
      films: (json['films'] as List)
          .map((filmJson) => Film.fromJson(filmJson))
          .toList(),
    );
  }
}

class Film {
  String title;
  String director;
  String releaseDate;

  Film(
      {required this.title, required this.director, required this.releaseDate});

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      title: json['title'],
      director: json['director'],
      releaseDate: json['releaseDate'],
    );
  }
}
