import 'package:flutter/material.dart';
import 'package:flutter_questions/perguntas_entidade.dart';
import './questao.dart';
import 'respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, dynamic>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const Questionario({
    Key? key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()[PerguntaEntidade.kKeyResposta]
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada][PerguntaEntidade.kKeyTexto].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resp[PerguntaEntidade.kKeyTexto].toString(),
            () => quandoResponder(int.parse(resp[PerguntaEntidade.kKeyNota].toString())),
          );
        }).toList(),
      ],
    );
  }
}
