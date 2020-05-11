import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import 'all_transactions.dart';
class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions); //calling the constructor of TransactionList for the list transaction
  @override
  Widget build(BuildContext context) {
    return
      Column(
          children:transactions.map((tx){
            return 
            Card(
              elevation: 5,
              child: Row(
              children: <Widget>[
               Container(
                 margin: EdgeInsets.symmetric(
                   vertical: 30,
                   horizontal: 30,

                 ),
                 decoration: BoxDecoration(
                   border: Border.all( 
                     color: Colors.black,   
                     style: BorderStyle.solid
                   ),
                 ),
                 child: Text(
                   tx.number.toString(),
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),
                 ),),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                   Container(
                     child: Text(
                       tx.title,
                       style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,

                       )
                     )),
                   Container(
                     child: Text(
                       DateFormat.yMMMd().format(tx.date),
                       style: TextStyle(
                         fontSize: 10,
                         
                       ),
                     )
                   )

                  
                 ])
              ],

            ),);
          }).toList(),
      );
  }
}