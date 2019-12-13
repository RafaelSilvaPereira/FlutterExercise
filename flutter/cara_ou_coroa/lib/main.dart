import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(CaraOuCoroa());

class CaraOuCoroa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cara ou coroa",
      home: CaraOuCoroaHome(),
    );
  }
}

class CaraOuCoroaHome extends StatefulWidget {
  @override
  _CaraOuCoroaHomeState createState() => _CaraOuCoroaHomeState();
}

class _CaraOuCoroaHomeState extends State<CaraOuCoroaHome> {
  AssetImage resultado = AssetImage("moeda_cara.png");

  void getRandomImg() {
    if (Random().nextInt(2) == 0) {
      this.resultado = AssetImage("moeda_cara.png");
    } else {
      this.resultado = AssetImage("moeda_coroa.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/img/logo.png'),
          ),
          GestureDetector(
            child: Image.asset('assets/img/botao_jogar.png'),
            onTap: () {
              print('ANTES ' + this.resultado.toString());
              this.getRandomImg();
              print('DEPOIS ' + this.resultado.toString());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) =>
                      TelaSecundaria(this.resultado, this.getRandomImg)),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class TelaSecundaria extends StatefulWidget {
  AssetImage mensagem;

  void randomImg;

  TelaSecundaria(AssetImage mensagem, randomImg) {
    this.mensagem = mensagem;
    // this.randomImg = randomImg;
  }
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  AssetImage resultado;
  void getRandomImg() {
    if (Random().nextInt(2) == 0) {
      this.resultado = AssetImage("moeda_cara.png");
    } else {
      this.resultado = AssetImage("moeda_coroa.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    this.resultado = ;
    
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12),
            child: GestureDetector(
              child: Image(
                image: resultado,
              ),
              onTap: () {
                setState(() {
                  this.randomImg();
                  this.resultado = widget.mensagem;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: GestureDetector(
              child: Image.asset('assets/img/botao_voltar.png'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  AssetImage randomImg() {}
}
