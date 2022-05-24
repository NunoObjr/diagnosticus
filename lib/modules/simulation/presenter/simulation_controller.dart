import 'package:get/get.dart';

class SimulationController extends GetxController with StateMixin<String> {
  RxInt selected = RxInt(0);
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }

  void setSelected(int value) {
    selected.value = value;
  }

  bool isSelected(int index) {
    return selected.value == index;
  }
}
