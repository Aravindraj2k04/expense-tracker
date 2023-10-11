import 'package:flutter/material.dart';
import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          body: expenses(),
        ),
        
      ),
    ),
  );

}
