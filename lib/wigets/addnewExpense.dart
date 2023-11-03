import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key, required this.addExpense, required void Function(expense expense1) onAddExpense}) : super(key: key);

  final void Function(expense expense1) addExpense;

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
  Category selectedCategory = Category.food;
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

  void submitdata() {
    final enteredtitle = titleController.text;
    final enteredamount = double.tryParse(enteredAmt.text);
    if (enteredtitle.isEmpty || enteredamount == null || selectDate == null) {
      showDialog(
        context: context,
        builder: (cxt) => AlertDialog(
          title: Text('Invalid Input'),
          content: Text('Please enter a valid title amount and date'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Okay'))
          ],
        ),
      );
      return;
    }
   widget.addExpense(
      expense(
        title: enteredtitle,
        amount: enteredamount,
        date: selectDate!,
        category: selectedCategory,
      ),
    );
    Navigator.of(context).pop();
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
          Text(selectDate == null
              ? 'Select Date'
              : formatting.format(selectDate!)),
          IconButton(
              onPressed: _presentDatePicker,
              icon: Icon(Icons.calendar_month_outlined)),
          SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                value: selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(
                          category.name.toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    selectedCategory = value;
                    print(selectedCategory);
                  });
                },
                // hint: Text('Select Category'),
              ),
              ElevatedButton(
                onPressed: () {
                  submitdata();
                },
                child: Text('Save Expense'),
              ),
              const Spacer(),
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
