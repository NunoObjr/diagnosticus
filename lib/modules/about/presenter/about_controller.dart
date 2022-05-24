import 'package:get/get.dart';

class AboutController extends GetxController with StateMixin<String> {
  final List about = [1];
  @override
  void onInit() {
    change('', status: RxStatus.success());
    super.onInit();
  }
}
