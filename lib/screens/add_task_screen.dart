import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_provider.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String titleText = "";
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                "Add Task",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              onChanged: (value) {
                titleText = value;
              },
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: "Add your task",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                context.read<TaskProvider>().addTask(Task(name: titleText));
                Navigator.pop(context);
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
