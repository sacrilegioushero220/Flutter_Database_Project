import 'package:flutter/material.dart';

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
