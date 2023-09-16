import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      //theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          appBar:
              AppBar(
                title: Text('Expenses Tracker'),
                actions: [
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
