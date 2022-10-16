import 'package:flutter/material.dart';
import '../models/lesson-model.dart';
import '../services/schedule.dart';

// ignore: must_be_immutable
class ScheduleScreen extends StatelessWidget {
  final scheduleService = ScheduleService();
  String groupName;
  ScheduleScreen({required this.groupName, super.key});

  @override
  Widget build(BuildContext context) {
    final mondaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.monday);
    final tuesdaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.tuesday);
    final wednesdaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.wednesday);
    final thursdaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.thursday);
    final fridaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.friday);
    final saturdaySchedule = scheduleService.getScheduleByGroupAndDay(
        key: groupName, day: EDay.saturday);
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            const Text('Понеділок'),
            Column(
              children: mondaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Вчитель: ${e.teacher}\nПара ${e.que}')),
                );
              }).toList(),
            )
          ],
        ),
        Column(
          children: [
            const Text('Вівторок'),
            Column(
              children: tuesdaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Вчитель: ${e.teacher}\nПара ${e.que}')),
                );
              }).toList(),
            )
          ],
        ),
        Column(
          children: [
            const Text('Середа'),
            Column(
              children: wednesdaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Вчитель: ${e.teacher}\nПара ${e.que}')),
                );
              }).toList(),
            )
          ],
        ),
        Column(
          children: [
            const Text('Четвер'),
            Column(
              children: thursdaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Вчитель: ${e.teacher}\nПара ${e.que}')),
                );
              }).toList(),
            )
          ],
        ),
        Column(
          children: [
            const Text("П'ятниця"),
            Column(
              children: fridaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                          'Вчитель: ${e.teacher}\nПара ${e.que}')),
                );
              }).toList(),
            )
          ],
        ),
        Column(
          children: [
            const Text('Субота'),
            Column(
              children: saturdaySchedule.map((e) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[100],
                  child: ListTile(
                      title: Text(
                        e.name,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text('Вчитель: ${e.teacher}')),
                );
              }).toList(),
            )
          ],
        ),
      ]),
      appBar: AppBar(
        title: Text('Schedule group $groupName'),
      ),
    );
  }
}
