import 'package:flutter/material.dart';


/*
tudo é widget (ferramenta)
void main() {

  * o runApp espera um widget app
  runApp(
    
    * MaterialApp: aplicativo base da classe Material 
    * (renderiza elementos na tela de varios dispositivos) 
    * que é a base do flutter
    

    * sintaxe - propriedade: widget
    * ex: appBar: AppBar
    MaterialApp(
      * você pode colocar um widget dentro de outro widget
      * neste caso, Center e Text
      
      * Scaffold - widget
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



/*

void main() { 
  int valor = 10;
  runApp(MyApp(title: "Aplicativo", valor: valor));
}



! StatelessWidget é uma das classes principal de widget do flutter
! stateles não permite mudança de estado, permanece o mesmo até o final da aplicação
! é usada quando você não tem uma mudança de estado no seu app
class MyApp extends StatelessWidget {

  final String title;
  final int valor;
  
  ? indica que a variável Key pode receber null, isso é obrigatorio
  ? e também precisa indicar um valor para as variáveis 
  const MyApp({Key? key, this.title="", this.valor=0}) : super(key: key);

  ? build - método do tipo widget que recebe variáveis de contexto
  @override //sobrescrevendo a classe pai
  Widget build(BuildContext context) {
    
    ? Container - widget
    return MaterialApp(
      ? você pode colocar um widget dentro de outro widget
      ? neste caso, Center e Text
      
      ? Scaffold - widget
      home: Scaffold(

        appBar: AppBar(
          ? chamando uma variavel, pode ser com o this. ou não
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

*/








/*
import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

* StatefulWidget são widgets que mudam o estado da interface do usuário
* durante o tempo de vida do app. em um StatefulWidget temos dois objetos:
? Widget (cria o objeto State e guarda os dados mutaveis) 
? e o <State> (cria o widget com metodo build e mostra variaveis mutaveis e
? não mutaveis)

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


void main() {
  runApp(MyApp(nome: "Juan"));
}





//No StatefulWidget, tudo que está no primeiro objeto,
//que vai dar o nome da classe, serão os dados que não
//vão ser alterados durante o tempo de vida do app
class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({Key? key, this.nome = ""}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}






//no State vão está todos os dados alteráveis
class _MyAppState extends State<MyApp> {

  int salario = 8000;

  void aumentaSalario(int valor){
    setState(() {
      salario += valor;
    });
  }

  void diminuiSalario(int valor){
    setState(() {
      salario -= valor;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
    
      //inserindo gestos
      child: GestureDetector(
        //gesto de toque
        onTap: () {
          print("Clicou");

          /*utilizando a função setState para mudar 
          o valor na tela:
          setState(() {
            salario++;
          });
          */

          //chamando da função
          aumentaSalario(1000);

          print("Novo salario: ${salario}");
        },

        //como está fora da classe, referenciamos a variavel assim: widget.nome
        child: Text(
          "O salrio de ${widget.nome} é ${salario}",
          textDirection: TextDirection.ltr,
        ),

      ),

    );

  }

}
