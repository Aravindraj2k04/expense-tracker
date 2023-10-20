import 'package:expensetracker/models/Expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/models/Expense_list.dart';
import 'package:expensetracker/wigets/addnewExpense.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  List<expense> _registeredexpenses = [
    expense(
      title: "groceries",
      amount: 1000,
      date: DateTime.now(),
      category: Category.food,
    ),
    expense(
      title: "shopping",
      amount: 2000,
      date: DateTime.now(),
      category: Category.shopping,
    ),
    expense(
      
      title: "travel",
      amount: 3000,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (cxt)=>const NewExpense());
  }


  void addExpense(expense expense1) {//class is expense and object is expense1
    setState(() {
      _registeredexpenses.add(expense1);
    });
  }
  {

  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Tracker'),
        actions: [
          IconButton(onPressed: () {
            _openAddExpenseOverlay();
          },
           icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Text("The chart"),
          expenselist(expenses: _registeredexpenses)
        ],
      ),
    );
  }
}
