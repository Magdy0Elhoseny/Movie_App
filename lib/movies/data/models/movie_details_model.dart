import 'package:movies_app/movies/domain/entities/movies_details.dart';

import 'genres_model.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromjson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        backdropPath: json["backdrop_path"],
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromjson(x))),
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        runtime: json["runtime"],
      );
}
