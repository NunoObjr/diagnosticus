import 'package:get/get.dart';

class SimulationController extends GetxController with StateMixin<String> {
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }
}
