import 'package:expenseplanner/model/transactions.dart';
import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
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
    return Card(
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
    );
  }
}
