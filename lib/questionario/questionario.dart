import 'package:flutter/material.dart';
import 'package:projeto_pergunta/questionario/filhos/questao.dart';
import 'package:projeto_pergunta/questionario/filhos/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionanda;
  final void Function() quandoResponderFn;
  final bool temPerguntaSelecionanda;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionanda,
    required this.quandoResponderFn,
    required this.temPerguntaSelecionanda,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> resposta = temPerguntaSelecionanda
        ? perguntas[perguntaSelecionanda].cast()['resposta']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionanda]['texto'] as String),
        ...resposta.map((e) => Resposta(e, quandoResponderFn)).toList(),
      ],
    );
  }
}
