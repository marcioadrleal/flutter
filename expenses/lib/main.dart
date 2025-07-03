import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
 
  final _transactions = [
     Transaction(id: 't1', 
                 title: 'Novo tenis de corrida', 
                 value: 310.76, 
                 date: DateTime.now()) ,
          Transaction(id: 't2', 
                 title: 'Novo tenis de corrida 2', 
                 value: 220.76, 
                 date: DateTime.now()) ,       
                 
                 ];

  MyHomePage({super.key});               
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
            color: Colors.blue,
            child: Text('Gráfico'),
            ),
          ),
          Column(
            children:  _transactions.map( (tr) {
                return Card(  
                  child: Row(
                    children: <Widget> [
                       Container( 
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple ,
                            width: 2,
                          )  ,
                          borderRadius: BorderRadius.circular(16.0) ,
                        ),
                        padding: EdgeInsets.all( 
                          10
                        ),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}' ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold ,
                            fontSize: 20 ,
                            color: Colors.purple
                          ),
                          ),
                       ) ,
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text(tr.title ,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ) ,
                          Text( DateFormat('dd/MM/yyyy').format(tr.date) ,
                            style: TextStyle(
                              color: Colors.grey[600],
                            ) ,
                            ) ,
                        ],
                       )
                    ],

                  ),
                  
                );
              }
            ).toList(),
            
          ),
        ],
      ),
    );
  }
}