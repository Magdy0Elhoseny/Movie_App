import 'package:movies_app/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromjson(Map<String, dynamic> json) =>
      RecommendationModel(
        backdropPath:
            json["backdrop_path"] ?? '/hYZ4a0JvPETdfgJJ9ZzyFufq8KQ.jpg',
        id: json["id"],
      );
}
