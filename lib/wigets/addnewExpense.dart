import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

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
  DateTime? selectDate;
  Future<void> _presentDatePicker() async {
    final now = DateTime.now();
    final firstdate = DateTime(now.year - 1, now.month, now.day);
    final datepicker = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstdate,
        lastDate: now);
    setState(() {
      selectDate = datepicker!;
    });
  }

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
        children: <Widget>[
          TextField(
            controller: titleController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: enteredAmt,
            keyboardType: TextInputType.number,
            maxLength: 13,
            decoration: const InputDecoration(
                prefixText: '\$ ', labelText: 'Enter Amount'),
          ),
            Text(selectDate == null ? 'Select Date' : formatting.format(selectDate!)),
          IconButton(
              onPressed: _presentDatePicker,
              icon: Icon(Icons.calendar_month_outlined)),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(titleController.text);
                  print(enteredAmt.text);
                },
                child: Text('Save Expense'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'))
            ],
          ),
        ],
      ),
    );
  }
}
