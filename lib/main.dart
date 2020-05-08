import 'package:flutter/material.dart';
import 'transaction.dart';
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
  @override
  final List<Transaction> transactions = [Transaction(id: '1A',title: 'SHOES',number: 280,date:DateTime.now()),
  Transaction(id: '1B',title: 'SHIRT',number: 2400,date:DateTime.now( ))];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
           child: Card(
            child: Text(
                "here goes the charts"
            ),
            color: Colors.blueAccent,
          ),),  
        Column(
          children: transactions.map((tx){
            return 
            Card(
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
        )
      ],
      
      ),
    );
  }
}
