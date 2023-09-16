import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          appBar:
              AppBar(
                title: Text('Expenses Tracker'),
                //centerTitle: true,
                //backgroundColor: Color.fromARGB(255, 159, 114, 244),
                actions: [
                
                IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.add))]),
          body: expenses(),
        ),
      ),
    ),
  );
}
