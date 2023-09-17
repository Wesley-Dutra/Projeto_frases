import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _frases = [
    "Cada dia é uma nova oportunidade para ser feliz.",
    "O futuro é brilhante e cheio de possibilidades.",
    "Acredite em si mesmo e você será imparável.",
    "Os desafios tornam a vida interessante; superá-los torna a vida significativa.",
    "O otimismo é a chave para o sucesso e a felicidade.",
  ];
  String _frase = 'Clique abaixo para gerar uma frase!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime.shade800,
        title: Text('Frases do Dia'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              '$_frase',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                int i = Random().nextInt(_frases.length);

                print('numero atual $i');

                setState(() {
                  _frase = _frases[i];
                });
              },
              child: Text(
                'Gerar Frase',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lime.shade700,
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        color: Colors.lime.shade50,
      ),
    );
  }
}
