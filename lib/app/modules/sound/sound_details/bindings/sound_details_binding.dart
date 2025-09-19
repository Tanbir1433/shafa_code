import 'package:get/get.dart';

import '../controllers/sound_details_controller.dart';

class SoundDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoundDetailsController>(
      () => SoundDetailsController(),
    );
  }
}
