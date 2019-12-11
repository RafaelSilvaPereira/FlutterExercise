import 'dart:math';

import 'package:flutter/material.dart';

class JokenPo extends StatefulWidget {
  @override
  _JokenPoState createState() => _JokenPoState();
}

class _JokenPoState extends State<JokenPo> {
  int _userOption = 0;
  int _sysOption = 0;
  String _gameResult;
  AssetImage img = AssetImage("assets/img/padrao.png");

  void _showResponse() {
    int getNoZero(rn) => rn != 0 ? rn : getNoZero(Random().nextInt(3));
    this._sysOption = getNoZero(Random().nextInt(3));
    var enemyChoise;
    var response = null;

    if (_userOption == 1 && _sysOption == 1)
      response = "Empate !";
    else if (_userOption == 2 && _sysOption == 2)
      response = "Empate !";
    else if (_userOption == 3 && _sysOption == 3)
      response = "Empate !";
    else if (_userOption == 1 && _sysOption == 3)
      response = "Vitoria !";
    else if (_userOption == 2 && _sysOption == 1)
      response = "Vitoria !";
    else if (_userOption == 3 && _sysOption == 2)
      response = "Vitoria !";
    else if (_userOption == 3 && _sysOption == 1)
      response = "Derrota !";
    else if (_userOption == 1 && _sysOption == 2)
      response = "Derrota !";
    else if (_userOption == 2 && _sysOption == 3)
      response = "Derrota !";
    else
      response = null;

    switch (_sysOption) {
      case 1:
        enemyChoise = AssetImage("assets/img/pedra.png");
        break;
      case 2:
        enemyChoise = AssetImage("assets/img/papel.png");
        break;
      case 2:
        enemyChoise = AssetImage("assets/img/tesoura.png");
        break;
      default:
        enemyChoise = AssetImage("assets/img/padrao.png");
    }

    setState(() {
      this._gameResult = response;
      this.img = enemyChoise;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JoKenPo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 1, bottom: 1),
            child: Text(
              "Escolha do app",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(
            image: img,
          ),
          Padding(
            padding: EdgeInsets.only(top: 1, bottom: 1),
            child: Text(
              "Sua escolhas",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  this._userOption = 1;
                  this._showResponse();
                },
                child: Image.asset(
                  'assets/img/pedra.png',
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  this._userOption = 2;
                  this._showResponse();
                },
                child: Image.asset('assets/img/papel.png', height: 100),
              ),
              GestureDetector(
                onTap: () {
                  this._userOption = 3;
                  this._showResponse();
                },
                child: Image.asset('assets/img/tesoura.png', height: 100),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              "Resultado...:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
          this._gameResult != null
              ? (Text(this._gameResult,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 28)))
              : Container(
                  child: RefreshProgressIndicator(
                  backgroundColor: Colors.blue,
                )),
        ],
      ),
    );
  }
}
