import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HelloScreen extends StatelessWidget {
  String firstName;
  String middleName;
  HelloScreen({required this.firstName, required this.middleName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Welcome $firstName $middleName',
      )),
      appBar: AppBar(
        title: const Text('Hello Screen'),
      ),
    );
  }
}
