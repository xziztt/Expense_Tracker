import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_vscode/widgets/transacitonlist.dart';
class NewTransaction extends StatelessWidget {
  final nameController = TextEditingController();
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
               controller: nameController,
               decoration: InputDecoration(
                 labelText: 'Input Item Name'
               ),
              //onChanged:(val) => inputName = val  ,

             ),
             TextField(
               controller: amountController,
               decoration: InputDecoration(
                 labelText: 'Input Amount '
               ),
               //onChanged: (val) => inputAmount = val,
             ),
             FlatButton(
               child: Text(
                 "Insert",
                 style: TextStyle(
                   color: Colors.blue,
                 ),
               ),
               onPressed: (){
                 print(nameController.text);//instead of inputName and inputAmount
                 print(amountController.text);
                 
               },
               ),

           ]
         ),
       )

     );
  }
}