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

    List<String> resposta = perguntas[_perguntaRespondida].cast()['resposta'];
    List<Widget> widget = resposta.map((e) => Resposta(e, _responder)).toList();

    // for (var element in resposta) {
    //   widget.add(Resposta(element, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaRespondida]['texto'] as String),
            ...widget,
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
