import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: true,
        onChanged: (isChecked) {},
      ),
      title: const Text("Test"),
    );
  }
}