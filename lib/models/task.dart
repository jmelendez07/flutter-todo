class Task {
  final String title;
  final String username;
  final String content;
  final String imageUrl;
  bool isCompleted;

  Task({
    required this.title,
    required this.username,
    required this.content,
    required this.imageUrl,
    this.isCompleted = false,
  });
}
