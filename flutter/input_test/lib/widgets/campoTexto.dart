import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Entrada de dados',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
              ),
              style: TextStyle(fontSize: 35, color: Colors.red),
              controller: this._textEditingController,
            ),
          ),
          RaisedButton(
            child: Text('GO!'),
            onPressed: () {
              print(this._textEditingController.text);
            },
            color: Colors.blue[900],
          )
        ],
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
