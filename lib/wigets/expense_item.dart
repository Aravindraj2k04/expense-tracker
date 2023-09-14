import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/expenses.dart';

class Expenseitem extends StatelessWidget {
  const Expenseitem({
    super.key,
    this.expense,
  });
  final expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Card(
          child: Column(
        children: [
          Text(expense.title),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(category_icon[expense.category]),
                  const SizedBox(
                    width: 8,
                  ),
                  //Text('${(expense.category).toString()}'),
                  const SizedBox(
                    width: 5,
                  ),
                 
                 Text(expense.formattedDate),
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
