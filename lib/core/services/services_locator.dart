import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_sorurce.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_toprated_usecase.dart';
import 'package:movies_app/movies/presentation/controller/bloc_movie_details/movie_details_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //!         Bloc          reregisterFactory >-------- بتخلي كل ما تنادي على الMoviesBloc يعمل ريفريش للصفحة عن طريق ال hashcode
    sl.registerFactory(() => MoviesBloc(
          sl(),
          sl(),
          sl(),
        ));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    //?           Use Cases                   registerLazySingleton >---- بتخليك قادر تستخدم نفس الاوبجيكت في اي مكان في الابليكيشن
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    //*          Repository

    sl.registerLazySingleton<BaseMoviesRepositoery>(
        () => MoviesRepository(sl()));

    //           DATA SOURCE

    sl.registerLazySingleton<BaseMovieRemoteDataSoruce>(
        () => MovieRemoteDataSoruce());
  }
}
