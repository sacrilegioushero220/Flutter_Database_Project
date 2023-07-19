import 'package:flutter/material.dart';

import '../db/functions/DbFunctions.dart';
import '../db/model/dataModel.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Student Name',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _ageController,
          decoration: const InputDecoration(
            labelText: 'Student Age',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
            onPressed: () {
              return onAddStudentButtonClicked();
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Student'))
      ]),
    );
  }

  onAddStudentButtonClicked() {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    if (name.isEmpty || age.isEmpty) {
      return;
    }
    print('Name: $name, Age: $age');
    final student = StudentModel(name: name, age: age);

    addStudent(student);
  }
}
