import 'package:get/get.dart';

import 'home_student_controller.dart';

class HomeStudentBinding implements Bindings {
@override
void dependencies(){
    Get.lazyPut<HomeStudentController>(() => HomeStudentController());
  }
}