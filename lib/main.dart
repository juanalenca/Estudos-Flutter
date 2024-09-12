import 'package:flutter/material.dart';


/*
tudo é widget (ferramenta)
void main() {

  o runApp espera um widget app
  runApp(
    
    MaterialApp: aplicativo base da classe Material 
    (renderiza elementos na tela de varios dispositivos) 
    que é a base do flutter
    

    sintaxe - propriedade: widget
    ex: appBar: AppBar
    MaterialApp(
      você pode colocar um widget dentro de outro widget
      neste caso, Center e Text
      
      Scaffold - widget
      home: Scaffold(

        appBar: AppBar(
          title: Text("Aplicativo"),
        ),

        body: Center(
          child: Text(
            "Hello, World!",
            style: TextStyle(backgroundColor: Colors.black, color: Colors.yellow),
          ),
        ),

      ),

    ),

  );

}
*/



void main() { 
  int valor = 10;
  runApp(MyApp(title: "Aplicativo", valor: valor));
}



//StatelessWidget é uma das classes principal de widget do flutter
//é usada quando você não tem uma mudança de estado no seu app
class MyApp extends StatelessWidget {

  final String title;
  final int valor;
  
  //? indica que a variável Key pode receber null, isso é obrigatorio
  //e também precisa indicar um valor para as variáveis 
  const MyApp({Key? key, this.title="", this.valor=0}) : super(key: key);

  //build - método do tipo widget que recebe variáveis de contexto
  @override //sobrescrevendo a classe pai
  Widget build(BuildContext context) {
    
    //Container - widget
    return MaterialApp(
      //você pode colocar um widget dentro de outro widget
      //neste caso, Center e Text
      
      //Scaffold - widget
      home: Scaffold(

        appBar: AppBar(
          //chamando uma variavel, pode ser com o this. ou não
          title: Text(this.title),
        ),

        body: Center(
          child: Text(
            "Hello, World!" + this.valor.toString(),
            style: TextStyle(backgroundColor: Colors.black, color: Colors.yellow),
          ),
        ),

      ),

    );
  
  }

}










/*
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
*/
