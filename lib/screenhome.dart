import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Demo Project'),
        elevation: 2,
      ),
      body: const Column(
        children: [AddStudentWidget(), Expanded(child: ListStudentNames())],
      ),
    );
  }
}

class AddStudentWidget extends StatelessWidget {
  const AddStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ListStudentNames extends StatelessWidget {
  const ListStudentNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
