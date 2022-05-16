import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with StateMixin<String> {

 @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }
}