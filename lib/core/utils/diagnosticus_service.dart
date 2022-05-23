import 'package:dio/dio.dart';

class DiagnosticusService {
  static Dio? connection;

  static void initConnection() {
    connection = Dio(
      BaseOptions(baseUrl: 'https://diagnosticus-action.herokuapp.com/'),
    );
  }
}
