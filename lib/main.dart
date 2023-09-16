import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: ('Flutter Expense tracker'),
      home: SafeArea(
        child: Scaffold(
          appBar:
              AppBar(actions: [
                Title(
                  color: Colors.blueAccent,
                   child: Center(child: Text("Expense tracker")),
                   ),
                //backgroundColor: Colors.red,
                IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.add))]),
          body: expenses(),
        ),
      ),
    ),
  );
}
