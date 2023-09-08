import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

class expense_item extends StatelessWidget {
  
  const expense_item({
    super.key,
    required this.expense,
  });
  final  expense;

  @override
  Widget build(BuildContext context) {
    return const Card(child: expenses.title,);
  }
}