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
      body: Column(
        children: [
          AddStudentWidget(),
          const Expanded(child: ListStudentNames())
        ],
      ),
    );
  }
}

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  onAddStudentButtonClicked() {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    if (name.isEmpty || age.isEmpty) {
      return;
    }
  }

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
            onPressed: onAddStudentButtonClicked(),
            icon: const Icon(Icons.add),
            label: const Text('Add Student'))
      ]),
    );
  }
}

class ListStudentNames extends StatelessWidget {
  const ListStudentNames({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('Student Name $index'),
            subtitle: Text('Student Age $index'),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 50);
  }
}
