import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int total;
  final void Function() quandoReiniciarApp;
  const Resultado({
    required this.total,
    required this.quandoReiniciarApp,
    super.key,
  });

  String get frase {
    if (total < 8) {
      return 'Parabéns!';
    } else if (total < 12) {
      return 'Você é bom!';
    } else if (total < 20) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Text(
            frase,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
            onPressed: quandoReiniciarApp,
            child: const Text(
              'Reiniciar',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            )),
      ],
    );
  }
}
