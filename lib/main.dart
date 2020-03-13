import 'package:flutter/cupertino.dart';

import './transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //created a list of Transaction object
  final List<Transactions> transactions = [
    Transactions(id: 1, title: 'Sneakers', amount: 24.99, date: DateTime.now()),
    Transactions(
        id: 2, title: 'Ankle socks', amount: 21.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'CHART !!!',
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.orange,
                elevation: 5.5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      onPressed: () {},
                      color: Colors.green,
                      textColor: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transactions.map((tx) {
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
            )
          ],
        ));
  }
}
