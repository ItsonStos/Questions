import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({Key? key}) : super(key: key);

  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', responder),
            Resposta('Resposta 2', responder),
            Resposta('Resposta 3', responder),
          ],
        ),
      ),
    );
  }
}
