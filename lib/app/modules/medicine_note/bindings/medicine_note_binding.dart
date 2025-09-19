import 'package:get/get.dart';

import '../controllers/medicine_note_controller.dart';

class MedicineNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicineNoteController>(
      () => MedicineNoteController(),
    );
  }
}
