import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlaayingState;
  final String nowPlayingmessage;
  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularmessage;
  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedmessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlaayingState = RequestState.loading,
    this.nowPlayingmessage = '',
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularmessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedmessage = '',
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlaayingState,
    String? nowPlayingmessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularmessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedmessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlaayingState: nowPlaayingState ?? this.nowPlaayingState,
      nowPlayingmessage: nowPlayingmessage ?? this.nowPlayingmessage,
      popularMovies: popularMovies ?? this.nowPlayingMovies,
      popularState: popularState ?? this.nowPlaayingState,
      popularmessage: popularmessage ?? this.popularmessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedmessage: topRatedmessage ?? this.topRatedmessage,
    );
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlaayingState,
        nowPlayingmessage,
        popularMovies,
        popularState,
        popularmessage,
        topRatedMovies,
        topRatedState,
        topRatedmessage,
      ];
}
