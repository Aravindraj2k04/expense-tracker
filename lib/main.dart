import 'package:flutter/material.dart';
import 'expenses.dart';


void main()
{
  runApp(MaterialApp(
    title: "Expense tracker",
    home: SafeArea(
      child: 
        Scaffold(
          //appBar: AppBar(title: Text("Expense tracker"),),
          body:expenses(),
        ),
      
    ),
  ),
  );
}