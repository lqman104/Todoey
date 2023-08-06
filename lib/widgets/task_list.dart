import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: const [
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
      ],
    );
  }
}