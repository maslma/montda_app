import 'package:flutter/material.dart';

class TaskModel
{
  String title;
  bool isCompleted;
  Color colorIcon, textColorDone, textColorEnd , borderColor;

  TaskModel({
    required this.title,
    required this.isCompleted,
    required this.colorIcon,
    required this.textColorDone,
    required this.textColorEnd,
    this.borderColor = Colors.white,
  });
}