class Task {
  final String name;
  bool _isDone = false;

  Task({required this.name});

  void toggle() {
    _isDone = !_isDone;
  }

  bool get isDone => _isDone;
}
