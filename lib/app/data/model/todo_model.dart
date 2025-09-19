class TodoModel {
  final String taskName;
  final String description;
  bool isChecked;

  TodoModel({
    required this.taskName,
    required this.description,
    this.isChecked = false,
  });
}