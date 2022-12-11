import 'package:flutter/material.dart';
import 'package:lab1/models/person-model.dart';

// ignore: must_be_immutable
class ListScreen extends StatelessWidget {
  List<Person> persons;
  ListScreen({required this.persons, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        children: [
          const Text('Persons'),
          Column(
            children: persons.map((e) {
              return Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                color: Colors.green[100],
                child: ListTile(
                    title: Text(
                      e.middleName + ' ' + e.firstName,
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                        'City: ${e.city}\nDate birht: ${e.dateBirth.day}-${e.dateBirth.month}-${e.dateBirth.year}')),
              );
            }).toList(),
          )
        ],
      ),
    ]));
  }
}
