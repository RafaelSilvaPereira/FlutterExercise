import 'package:flutter/material.dart';

class MenuContato extends StatefulWidget {
  @override
  _MenuContatoState createState() => _MenuContatoState();
}

class _MenuContatoState extends State<MenuContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contato',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.textTheme.body1.color,
            fontSize: Theme.of(context).appBarTheme.textTheme.body1.fontSize,
          ),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  child: Image.asset('assets/img/imagens/detalhe_contato.png'),
                  padding: EdgeInsets.all(30),
                ),
                Container(
                  width: 100,
                  child: Text(
                    'rafaelsp@gmail.com' 'meu amigo me ajuda',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
