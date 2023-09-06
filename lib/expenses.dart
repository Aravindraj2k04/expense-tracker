import 'package:flutter/material.dart';

class expenses extends StatefulWidget {
  const expenses({super.key});

  @override
  State<expenses> createState() => _expensesState();
}

class _expensesState extends State<expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Text('Child'),
          Text('Chart items'),
        ],
       ),
    );
  }
}