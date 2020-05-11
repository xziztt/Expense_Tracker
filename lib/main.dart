import 'package:flutter/material.dart';
import 'package:flutter_vscode/widgets/all_transactions.dart';
import 'package:flutter_vscode/widgets/transacitonlist.dart';
import 'models/transaction.dart';
import 'widgets/transaction_new.dart';

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
  //String inputName;
  //String inputAmount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
       
        AllTransactions()
        
      ],
      
      ),
    );
  }
}
