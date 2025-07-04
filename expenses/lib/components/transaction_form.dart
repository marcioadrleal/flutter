import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  
  String title = '';
  String value = '';
  //TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
               children: [
                TextField(
                  onChanged: (newValue) => title = newValue,
                  decoration: InputDecoration(
                    labelText: 'Título'
                  ),
                ) ,
                TextField(
                   onChanged: (newValue) => value = newValue,
                   decoration: InputDecoration(
                     labelText: 'Valor R\$'
                   ) , 
                ) ,
                Row( 
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     TextButton(onPressed: () {
                       print(title);
                       print(value);
                     }, 
                     child: Text('Nova Transação' ,
                     style: TextStyle(color: Colors.purple),
                     ) ,
                     ) ,  
                   ],
                  
                ) ,
               ],
              ),
            ) ,
          ); 
  }
}