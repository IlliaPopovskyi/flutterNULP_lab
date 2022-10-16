import 'package:flutter/cupertino.dart';
import '../constants/schedules.dart';
import '../models/lesson-model.dart';

class ScheduleService {
  List<Lesson> getScheduleByGroup(key) {
    for (var schedule in schedules) {
      if (schedule.groupName == key) {
        return schedule.lessons;
      }
    }
    throw ErrorDescription('Group not found');
  }

  List<Lesson> getScheduleByGroupAndDay(
      {required String key, required EDay day}) {
    final list = getScheduleByGroup(key);
    var result = list.where((lesson) => lesson.day == day).toList();
    result.sort((left, right) => left.que.compareTo(right.que));
    return result;
  }
}
