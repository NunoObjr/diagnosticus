import 'package:get/get.dart';

class CasesController extends GetxController with StateMixin<String> {
  List cases = [1];
  @override
  void onInit() {
    change('', status: RxStatus.success());
    if (Get.arguments != null) {
      cases = [];
    }
    super.onInit();
  }
}
