import 'package:diagnosticus_action_iv/modules/login/datasource/login_datasource.dart';
import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<String> {
  final username = TextEditingController();
  final password = TextEditingController();
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }

  void login() async {
    isLoading.value = true;
    try {
      await LoginDatasource.requestLogin(
          userName: username.text, password: password.text);
      await Get.offNamed(DiagnosticusRoutes.homeStudent);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}
