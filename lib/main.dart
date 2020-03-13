import 'package:flutter/cupertino.dart';

import './transactions.dart';
import 'package:flutter/material.dart';

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
        id: 2, title: 'Ankle socks', amount: 1.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              child: Text(
                'This is a list !!!',
                style: TextStyle(fontSize: 30),
              ),
              color: Colors.green,
              elevation: 7.8,
            )
          ],
        ));
  }
}
