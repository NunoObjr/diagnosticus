import 'package:get/get.dart';

import 'classes_controller.dart';

class ClassesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassesController>(() => ClassesController());
  }
}
