import 'package:get/get.dart';

import '../controllers/soul_controller.dart';

class SoulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoulController>(
      () => SoulController(),
    );
  }
}
