import 'package:expensetracker/models/Expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/models/Expense_list.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  List<expense> _registeredexpenses = [
    expense(
      title: "Groceries",
      amount: 1000,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [ 
          expenselist(expenses:_registeredexpenses)
        ],
       ),
    );
  }
}