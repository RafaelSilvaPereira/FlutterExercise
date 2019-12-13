import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(CaraOuCoroa());

class CaraOuCoroa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  AssetImage resultado = AssetImage("assets/img/moeda_coroa.png");

  void getRandomImg() {
    if (Random().nextInt(2) == 0) {
      this.resultado = AssetImage("assets/img/moeda_cara.png");
    } else {
      this.resultado = AssetImage("assets/img/moeda_coroa.png");
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
              this.getRandomImg();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => TelaSecundaria(this.resultado)),
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

  TelaSecundaria(AssetImage mensagem) {
    this.mensagem = mensagem;
  }

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState(this.mensagem);
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  AssetImage message;

  void getRandomImg() {
    if (Random().nextInt(2) == 0) {
      this.message = AssetImage("assets/img/moeda_cara.png");
    } else {
      this.message = AssetImage("assets/img/moeda_coroa.png");
    }
  }

  _TelaSecundariaState(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12),
            child: GestureDetector(
              child: Image(
                image: this.message,
              ),
              onTap: () {
                setState(() {
                  this.getRandomImg();
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
}
