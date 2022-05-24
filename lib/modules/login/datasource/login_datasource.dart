import 'dart:convert';

import 'package:diagnosticus_action_iv/core/utils/diagnosticus_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginDatasource {
  static Future<void> requestLogin(
      {required String userName, required String password}) async {
    try {
      var basicAuth =
          'Basic ' + base64Encode(utf8.encode('$userName:$password'));

      await DiagnosticusService.connection!
          .get('https://diagnosticus-action.herokuapp.com/login',
              options: Options(
                headers: {
                  'authorization': basicAuth,
                },
              ));
    } on DioError catch (e) {
      debugPrint(e.message);
      rethrow;
    }
  }
}
