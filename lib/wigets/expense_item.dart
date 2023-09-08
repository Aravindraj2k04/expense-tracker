import 'package:flutter/material.dart';
import 'package:flutter/material.dart'; // Import the necessary package

import 'package:expensetracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  // Use the correct constructor syntax
  const ExpenseItem({
    Key? key,
    required this.expense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
