import 'package:get/get.dart';

class CasesController extends GetxController with StateMixin<String> {
  final List cases = [1];
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }
}
