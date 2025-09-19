import 'package:get/get.dart';

import '../../../data/model/todo_model.dart';

class MedicineNoteController extends GetxController {

  var todoList = <TodoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    todoList.addAll([
      TodoModel(taskName: "Napa", description: "Everyday at 6.00 pm", isChecked: false),
      TodoModel(taskName: "Vitamin C", description: "Every morning", isChecked: true),
      TodoModel(taskName: "Paracetamol", description: "After lunch", isChecked: false),
      TodoModel(taskName: "Omeprazole", description: "Before breakfast", isChecked: true),
      TodoModel(taskName: "Antacid", description: "Twice a day", isChecked: false),
      TodoModel(taskName: "Cough Syrup", description: "Before sleep", isChecked: false),
    ]);
  }


}


