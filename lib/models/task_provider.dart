import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int getTaskSize(){
    return _tasks.length;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggle();
    notifyListeners();
  }

}