import 'package:flutter/material.dart';

import '../model/dataModel.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);
//fucntion for button clicking

void addStudent(StudentModel value) {
  studentListNotifier.value.add(value);
  // ignore: invalid_use_of_protected_member
  studentListNotifier.notifyListeners();
}
