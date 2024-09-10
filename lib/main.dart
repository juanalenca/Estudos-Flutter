import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Pergunta respondida!");
  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      "Qual o significado da frase 'Era uma vez...'?",
      "Qual a frase mais famosa do mundo?",
      "Qual o significado da palavra 'amor'?"
    ];

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text("Perguntas")
        ),

        body: Column(

          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: responder, child: Text("Resposta 1"),),
            ElevatedButton(onPressed: responder, child: Text("Resposta 2"),),
            ElevatedButton(onPressed: responder, child: Text("Resposta 3"),),
          ],

        ),

      ),

    );

  }

}
