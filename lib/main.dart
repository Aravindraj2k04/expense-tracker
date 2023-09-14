import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: "Expense tracker",
      home: SafeArea(
        child: Scaffold(
          appBar:
              AppBar(actions: [
                //backgroundcolor: Colors.red,
                IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.add))]),
          body: expenses(),
        ),
      ),
    ),
  );
}
