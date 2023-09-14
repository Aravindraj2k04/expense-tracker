import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Expense tracker",
      home: SafeArea(
        child: Scaffold(
          appBar:
              AppBar(actions: [
                ,
                IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.add))]),
          body: expenses(),
        ),
      ),
    ),
  );
}
