import 'package:expense_app/models/transaction.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransactionHandler;
  NewTransaction(this.addTransactionHandler);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                Transaction t = Transaction(
                    id: 10,
                    amount: double.parse(amountController.text),
                    date: DateTime.now(),
                    title: titleController.text);
                print(t.title + '::' + t.amount.toString());
                addTransactionHandler(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
