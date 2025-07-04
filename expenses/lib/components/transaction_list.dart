import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget{

  final List<Transaction> transaction;

  TransactionList(this.transaction); 

  @override
  Widget build(BuildContext context) {
    return Container(  
       child: Column(
            children:  transaction.map( (tr) {
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



    );
  }

}