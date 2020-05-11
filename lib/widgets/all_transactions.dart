import 'package:flutter/material.dart';
import 'transaction_new.dart';
import 'transacitonlist.dart';
import '../models/transaction.dart';
class AllTransactions extends StatefulWidget {
  
  @override
  _AllTransactionsState createState() => _AllTransactionsState();
}

class _AllTransactionsState extends State<AllTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '1A',title: 'SHOES',number: 280,date:DateTime.now()),
  Transaction(id: '1B',title: 'SHIRT',number: 2400,date:DateTime.now( ))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_userTransactions),
        NewTransaction()
      ],
      
    );
  }
}