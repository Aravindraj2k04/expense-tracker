import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatting=DateFormat.yMd();

const uuid = Uuid();

enum Category { food, entertainment, travel, shopping }

const category_icon = {
  Category.food: Icons.fastfood,
  Category.entertainment: Icons.movie,
  Category.travel: Icons.flight,
  Category.shopping: Icons.shopping_cart,
};

class expense {
  expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  get  formattedDate{
  return formatting.format(date);
}

}

