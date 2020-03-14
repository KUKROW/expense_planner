import 'package:flutter/cupertino.dart';

class Transactions {
  final int id;
  final DateTime date;
  final String title;
  final double amount;

  //created a constructor class
  Transactions({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
