import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int total;
  const Resultado({required this.total, super.key});

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
    return Center(
      child: Text(
        frase,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
