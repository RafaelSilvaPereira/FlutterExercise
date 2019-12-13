import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool br = false;
  bool china = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              secondary: Icon(Icons.add_box),
              title: Text('Comida BR'),
              value: this.br,
              onChanged: (bool value) {
                setState(() => this.br = value);
              },
            ),
            CheckboxListTile(
              secondary: Icon(Icons.add_box),
              title: Text('Comida Chinesa'),
              value: this.china,
              onChanged: (bool value) {
                setState(() {
                  this.china = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
