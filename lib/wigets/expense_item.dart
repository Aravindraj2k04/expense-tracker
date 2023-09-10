import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';
//import 'package:expensetracker/expenses.dart';

class Expenseitem extends StatelessWidget {
  const Expenseitem({
    super.key,
    this.expense,
  });
  final expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        child: Text(expense.title),
      ),
    );
  }
}
