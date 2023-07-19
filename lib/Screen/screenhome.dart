import 'package:flutter/material.dart';

import 'addStudentWidget.dart';
import 'listStudentWidget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Demo Project'),
        elevation: 2,
      ),
      body: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentNames())
        ],
      ),
    );
  }
}
