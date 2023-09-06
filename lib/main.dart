import 'package:flutter/material.dart';
import 'expenses.dart';


void main()
{
  runApp(MaterialApp(
    title: "Expense tracker",
    home: Scaffold(
      appBar: AppBar(title: Text("Expense tracker"),),
      body:expenses(),
    ),
  ),
  );
}