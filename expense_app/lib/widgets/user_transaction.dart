import 'package:expense_app/models/transaction.dart';
import 'package:expense_app/widgets/transactions_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 1,
      title: 'Riding Jacket',
      amount: 769.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 3,
      title: 'Riding Pant',
      amount: 699.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 3,
      title: 'CE Helmet',
      amount: 499.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 4,
      title: 'Riding Shoes',
      amount: 450.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 5,
      title: 'Elbow Guard',
      amount: 399.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 6,
      title: 'Wind shield',
      amount: 399.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 7,
      title: 'crash Guard',
      amount: 399.99,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    print('Adding Txn');
    setState(() {
      _userTransactions.add(Transaction(
          id: 4, title: title, amount: amount, date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
