import 'package:flutter/material.dart';

class MenuCliente extends StatefulWidget {
  @override
  _MenuClienteState createState() => _MenuClienteState();
}

class _MenuClienteState extends State<MenuCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cliente',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.textTheme.body1.color,
            fontSize: Theme.of(context).appBarTheme.textTheme.body1.fontSize,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  child: Image.asset('assets/img/imagens/detalhe_cliente.png'),
                  padding: EdgeInsets.all(30),
                ),
                Text(
                  'Conteudo para o cliente',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                  maxLines: 5,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
