import 'package:flutter/material.dart';

main(){
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget{
 
  var perguntaSelecionada = 0;
 
    

    void responder(){
      perguntaSelecionada++;
      print(perguntaSelecionada );
    }

    @override
    Widget build(BuildContext context){
      final List<String> perguntas = [
        'Qual sua cor favorita' ,
        'Qual animal favorito' 
      ];
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body:  Column(
            children: <Widget>[ 
              Text(perguntas[0]) ,
              Text(perguntas[1]) ,
              ElevatedButton( child: Text('Resposta 1'),
                            onPressed: responder) , 
              ElevatedButton( child: Text('Resposta 2'),
                            onPressed: responder) ,
              ],
          ),
        ),
      ); 
    }
}
