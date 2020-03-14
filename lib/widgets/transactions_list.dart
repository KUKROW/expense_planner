import 'package:flutter/material.dart';
import '../model/transactions.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TransactionsListState();
  }
}

class _TransactionsListState extends State<TransactionsList> {
  //created a list of Transaction object
  final List<Transactions> _userTransactions = [
    Transactions(id: 1, title: 'Sneakers', amount: 24.99, date: DateTime.now()),
    Transactions(
        id: 2, title: 'Ankle socks', amount: 21.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
