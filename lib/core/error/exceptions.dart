import 'package:movies_app/core/network/error_massage_model.dart';

class ServerException implements Exception {
  final ErrorMassageModel errorMassageModel;

  ServerException({
    required this.errorMassageModel,
  });
}

class LocalDatabaseException implements Exception {
  final String message;

  const LocalDatabaseException({
    required this.message,
  });
}
