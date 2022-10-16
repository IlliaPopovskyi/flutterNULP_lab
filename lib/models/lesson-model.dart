enum ETypeLessons {
  lecture,
  practice,
  lab,
}

enum EDay {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class Lesson {
  final String name;
  final EDay day;
  final String teacher;
  final ETypeLessons type;
  final String url;
  final int que;

  const Lesson({
    required this.name,
    required this.day,
    required this.teacher,
    required this.type,
    required this.url,
    required this.que,
  });
}
