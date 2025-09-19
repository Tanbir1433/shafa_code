import 'package:get/get.dart';

import '../controllers/top_controller.dart';

class TopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopController>(
      () => TopController(),
    );
  }
}
