import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../core/di.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _connectionChecker =
      getIt<InternetConnectionChecker>();

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
