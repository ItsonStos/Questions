import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(const PerguntasApp());

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({Key? key}) : super(key: key);

  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Tigre', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Hiena', 'nota': 3},
        {'texto': 'Leão', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu heroi favorito?',
      'resposta': [
        {'texto': 'Homem-Aranha', 'nota': 10},
        {'texto': 'Capitão-Caverna', 'nota': 5},
        {'texto': 'Pantera-Cor-Rosa', 'nota': 3},
        {'texto': 'As-Trigemeas', 'nota': 1},
      ],
    },
  ];

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += nota;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
