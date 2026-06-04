import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as connection_checker;

import '../errors/failure.dart';

class InternetConnectionChecker {
  static final InternetConnectionChecker _instance =
      InternetConnectionChecker._internal();
  factory InternetConnectionChecker() => _instance;
  InternetConnectionChecker._internal();

  final connection_checker.InternetConnectionChecker _checker =
      connection_checker.InternetConnectionChecker();

  /// Checks if device has internet connection
  /// Returns true if connected, false otherwise
  Future<bool> hasConnection() async {
    try {
      return await _checker.hasConnection;
    } catch (e) {
      return false;
    }
  }

  /// Checks internet connection and returns [Right] with unit if connected,
  /// or [Left] with [NoInternetFailure] if not.
  Future<Either<Failure, void>> checkConnection() async {
    final hasInternet = await hasConnection();
    if (hasInternet) {
      return const Right(null);
    } else {
      return Left(
        NoInternetFailure(
          message: 'No internet connection. Please check your network settings.',
        ),
      );
    }
  }
}
