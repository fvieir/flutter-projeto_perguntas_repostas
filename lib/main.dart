import 'package:flutter/material.dart';
import 'package:projeto_pergunta/questionario/questionario.dart';
import './resultado/resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class _StatePerguntaApp extends State<PerguntaApp> {
  var _perguntaSelecionanda = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua COR favorita?',
      'resposta': ['Azul', 'Verde', 'Amarelo', 'Preto']
    },
    {
      'texto': 'Qual é o seu ANIMAL favorito?',
      'resposta': ['Coelho', 'Cachorro', 'Gato', 'Elefante']
    },
    {
      'texto': 'Qual é o seu INSTRUTOR favorito?',
      'resposta': ['Maria', 'Bia', 'João', 'Léo']
    }
  ];

  void _responder() {
    setState(() {
      if (temPerguntaSelecionanda) {
        _perguntaSelecionanda++;
      }
    });
  }

  bool get temPerguntaSelecionanda {
    return _perguntaSelecionanda < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (var element in resposta) {
    //   widget.add(Resposta(element, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionanda
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionanda: _perguntaSelecionanda,
                quandoResponderFn: _responder,
                temPerguntaSelecionanda: temPerguntaSelecionanda,
              )
            : const Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _StatePerguntaApp createState() {
    return _StatePerguntaApp();
  }
}
