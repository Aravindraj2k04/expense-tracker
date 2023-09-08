import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

class expenselist extends StatelessWidget {
  const expenselist({
    super.key,
    required this.expenses,
  });
  final List<expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (cxt, int index) => Text(expenses[index].title),
      ),
    );
  }
}
