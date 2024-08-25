//https://api.themoviedb.org/3/movie/now_playing?api_key=8c62961f64e46c8641f42a495e69baa1

class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";

  static const String apikey = "8c62961f64e46c8641f42a495e69baa1";

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apikey";

  static const String getPopularPath = "$baseUrl/movie/popular?api_key=$apikey";
  static const String getTopRatedPath =
      "$baseUrl/movie/top_rated?api_key=$apikey";

  static String getMovieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apikey";

  static String getRecommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apikey";

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
