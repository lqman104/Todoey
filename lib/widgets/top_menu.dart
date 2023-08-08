import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  final int tasksLeft;

  const TopMenu({super.key, required this.tasksLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.list,
              size: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Todoey",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 50,
            ),
          ),
          Text(
            "$tasksLeft tasks",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
