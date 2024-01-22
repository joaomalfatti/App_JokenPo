import 'package:flutter/material.dart';


class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JokenPo"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //1- text
          //2- imagem
          //3- text resultado
          //4- Linha 3 imagens
          const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child:
                Text(
                  "Escolha do App",
                  textAlign: TextAlign.center,
                  style:
                    TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
              ),
          ),
          GestureDetector(
            onTap: () { print("Um clique na Imagem!"); },
            onDoubleTap: () { print("Dois cliques na Imagem!"); },
            child: Image.asset("imagens/padrao.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child:
            Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style:
              TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("imagens/papel.png", height: 95,),
              Image.asset("imagens/pedra.png", height: 95),
              Image.asset("imagens/tesoura.png", height: 95),
            ],
          )
        ],
      ),
    );
  }
}
