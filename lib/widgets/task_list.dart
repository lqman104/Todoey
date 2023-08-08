import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_provider.dart';
import 'package:todoey/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: taskData.getTaskSize(),
          itemBuilder: (context, index) {
            return TaskItem(
              task: taskData.tasks[index],
              checkedCallback: (isChecked) {
                taskData.toggleTask(index);
              },
            );
          },
        );
      },
    );
  }
}
