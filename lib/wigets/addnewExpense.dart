import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}
var  enteredtitle='';

void _saveTitleinput(String inputvalue){
  enteredtitle=inputvalue;
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
           TextField(
            onChanged: _saveTitleinput,
            maxLength: 50,
            decoration:
             const InputDecoration(
              labelText: 'Title'
              ),
           ),
           Row(
            children: [
              ElevatedButton(onPressed:(){print( enteredtitle);}, child: Text('Save Expense'),),
            ],
           )
        ]),
    );
  }
}