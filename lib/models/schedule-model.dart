import 'lesson-model.dart';

class Schedule {
  final String groupName;
  final List<Lesson> lessons;

  const Schedule({
    required this.groupName,
    required this.lessons,
  });
}
