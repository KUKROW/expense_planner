import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './widgets/transactions_list.dart';

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
  //different methods of registering user input
  //method-1
  /*
  String titleInput;
  String amountInput;
  */

  //method-2
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      /*method-1 to change user input
                      onChanged: (val) {
                        titleInput = val;
                      }*/
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      /*method-1 to change user input
                      onChanged: (val) => amountInput = val
                      */
                      controller: amountController,
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      onPressed: () {
                        print(titleController.text);
                        print(amountController.text);
                      },
                      color: Colors.white30,
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            TransactionsList(),
          ],
        ));
  }
}
