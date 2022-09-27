import 'package:flutter/material.dart';
import 'questao.dart';

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
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 3'),
            ),
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
