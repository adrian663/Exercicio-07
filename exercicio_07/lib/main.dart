import 'package:flutter/material.dart';
import 'SegundaTela';

void main() {
  runApp(MaterialApp(
    home: PrimeiraTela(),
  ));
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo!"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "imagens/rick.jpg",
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SegundaTela()));
                },
                icon: Icon(Icons.arrow_right),
                label: Text("Let's go!"),
              ))
        ],
      ),
    );
  }
}