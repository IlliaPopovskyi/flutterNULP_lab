import 'package:flutter/material.dart';
import 'package:lab1/screens/schedule_screen.dart';
import 'constants/groups.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Input Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String firstGroup = groupNames.first;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext con) {
    return DropdownButton(
      alignment: AlignmentDirectional.centerStart,
      value: firstGroup,
      items: groupNames.map((String groupName) {
        return DropdownMenuItem(
            value: groupName,
            child: Text(
              groupName,
              textAlign: TextAlign.center,
            ));
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          firstGroup = value!;
        });
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ScheduleScreen(
                  groupName: firstGroup,
                )));
      },
    );
  }
}
