import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

var enteredtitle = '';

void _saveTitleInput(String inputvalue) {
  enteredtitle = inputvalue;
}

class _NewExpenseState extends State<NewExpense> {
  final titleController = TextEditingController();
  final enteredAmt = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    enteredAmt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(titleController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          ),
          Row(
            children: [
              TextField(
                controller: enteredAmt,
                decoration: const InputDecoration(label: Text('Enter Amount')),
                maxLength: 13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
