import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movies_details.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetail, MoviesDetailsParameters> {
  final BaseMoviesRepositoery baseMoviesRepositoery;

  GetMovieDetailsUseCase(this.baseMoviesRepositoery);

  @override
  Future<Either<Failure, MovieDetail>> call(
      MoviesDetailsParameters parameters) async {
    return await baseMoviesRepositoery.getMovieDetails(parameters);
  }
}

class MoviesDetailsParameters extends Equatable {
  final int movieId;

  const MoviesDetailsParameters({
    required this.movieId,
  });
  @override
  List<Object?> get props => [
        movieId,
      ];
}
