import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
   
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

  _addTransaction(String title , double value ){
    final newTransaction = 
       Transaction(id: Random().nextDouble().toString(), 
                   title: title, 
                   value: value, 
                   date: DateTime.now());
     setState( () {
       _transactions.add(newTransaction);
      });
  }

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}