import 'package:flutter/material.dart';
import 'package:montada_app/task2/data/task_model.dart';

class TaskList {
 static List<TaskModel> morning = [
    TaskModel(
      title: "Take a medicine",
      isCompleted: false,
      colorIcon: Colors.white,
      textColorEnd: Colors.white,
      textColorDone: Colors.grey.shade200,
    ),
    TaskModel(
      title: "Wash clothes",
      isCompleted: true,
      colorIcon: Colors.white,
      textColorEnd: Colors.white,
      textColorDone: Colors.grey.shade200,
    ),
  ];

 static List<TaskModel> afterWork = [
    TaskModel(
      title: "Go to the bank",
      isCompleted: false,
      colorIcon: Colors.orange,
      textColorEnd: Colors.grey,
      textColorDone: Colors.grey,
      borderColor: Colors.grey,
    ),
    TaskModel(
      title: "Regular in the wave release a work",
      isCompleted: true,
      colorIcon: Colors.orange,
      textColorEnd: Colors.orange,
      textColorDone: Colors.black12,
      borderColor: Colors.white,
    ),
    TaskModel(
      title: "See movie",
      isCompleted: false,
      colorIcon: Colors.orange,
      textColorEnd: Colors.grey,
      textColorDone: Colors.grey,
      borderColor: Colors.grey,
    ),
  ];

 static  List<TaskModel> goingToBed = [
    TaskModel(
      title: "Call mom",
      isCompleted: false,
      colorIcon: Colors.white,
      textColorEnd: Colors.white,
      textColorDone: Colors.grey.shade200,
    ),
    TaskModel(
      title: "Read a design journal",
      isCompleted: true,
      colorIcon: Colors.white,
      textColorEnd: Colors.white,
      textColorDone: Colors.grey.shade200,
    ),
  ];
}