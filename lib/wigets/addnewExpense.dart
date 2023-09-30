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
          TextField(
            
            controller: enteredAmt,
            keyboardType: TextInputType.number,
            maxLength: 13,
            decoration: const InputDecoration(
                prefixText: '\$ ', labelText: 'Enter Amount'),
          ),
          const Text('Select Date'),
          
          IconButton(

            onPressed: (){}, 
          icon: Icon(Icons.calendar_today)),
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
