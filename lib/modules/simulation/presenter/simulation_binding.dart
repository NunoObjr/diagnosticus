import 'package:get/get.dart';

import 'simulation_controller.dart';

class SimulationBinding implements Bindings {
@override
void dependencies(){
    Get.lazyPut<SimulationController>(() => SimulationController());
  }
}