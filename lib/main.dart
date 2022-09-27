import 'package:flutter/material.dart';
import 'questao.dart';
import './resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class _StatePerguntaApp extends State<PerguntaApp> {
  var _perguntaRespondida = 0;

  void _responder() {
    setState(() {
      _perguntaRespondida++;
    });
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaRespondida]),
            Resposta('Resposta 1', _responder),
            Resposta('Reposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
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
