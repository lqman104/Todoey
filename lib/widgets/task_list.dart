import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_item.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({
    super.key,
    required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(
          task: widget.tasks[index],
          checkedCallback: (isChecked) {
            setState(() {
              widget.tasks[index].toggle();
            });
          },
        );
      },
    );
  }
}
