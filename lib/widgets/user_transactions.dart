import 'package:flutter/material.dart';

import './transactions_list.dart';
import './new_transcations.dart';
import '../model/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserTransactionsList();
  }
}

class _UserTransactionsList extends State<UserTransactions> {
  //created a list of Transaction object
  final List<Transactions> _userTransactions = [
    Transactions(id: 1, title: 'Sneakers', amount: 24.99, date: DateTime.now()),
    Transactions(
        id: 2, title: 'Ankle socks', amount: 21.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransactions(),
        TransactionsList(_userTransactions),
      ],
    );
  }
}
