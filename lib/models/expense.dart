import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formetter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, leisure, travel, work }

const categoryIcons = {
  Category.food: Icons.fastfood_outlined,
  Category.leisure: Icons.movie_creation_outlined,
  Category.travel: Icons.flight_takeoff_outlined,
  Category.work: Icons.work_outline_outlined,
};

class Expense {
  Expense(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  get formattedDate {
    return formetter.format(date);
  }
}
