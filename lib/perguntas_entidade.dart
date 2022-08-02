class PerguntaEntidade {
  List<Map<String, dynamic>> obterPerguntas() {
    return const [
      {
        kKeyTexto: 'Qual sua cor favorita?',
        kKeyResposta: [
          {kKeyTexto: 'Preto', kKeyNota: 10},
          {kKeyTexto: 'Vermelho', kKeyNota: 5},
          {kKeyTexto: 'Verde', kKeyNota: 3},
          {kKeyTexto: 'Branco', kKeyNota: 1},
        ],
      },
      {
        kKeyTexto: 'Qual é o seu animal favorito?',
        kKeyResposta: [
          {kKeyTexto: 'Tigre', kKeyNota: 10},
          {kKeyTexto: 'Cobra', kKeyNota: 5},
          {kKeyTexto: 'Hiena', kKeyNota: 3},
          {kKeyTexto: 'Leão', kKeyNota: 1},
        ],
      },
      {
        kKeyTexto: 'Qual é o seu heroi favorito?',
        kKeyResposta: [
          {kKeyTexto: 'Homem-Aranha', kKeyNota: 10},
          {kKeyTexto: 'Capitão-Caverna', kKeyNota: 5},
          {kKeyTexto: 'Pantera-Cor-Rosa', kKeyNota: 3},
          {kKeyTexto: 'As-Trigemeas', kKeyNota: 1},
        ],
      },
    ];
  }

  static const String kKeyTexto = 'texto';
  static const String kKeyResposta = 'respostas';
  static const String kKeyNota = 'nota';
}
