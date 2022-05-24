import 'package:get/get.dart';

import 'pontuation_controller.dart';

class PontuationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PontuationController>(() => PontuationController());
  }
}
