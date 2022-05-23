import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<String> {
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }
}
