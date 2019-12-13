import 'package:flutter/material.dart';

class EntradaRadio extends StatefulWidget {
  @override
  _EntradaRadioState createState() => _EntradaRadioState();
}

class _EntradaRadioState extends State<EntradaRadio> {
  var _userChange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Text('M'),
            // Radio(
            //   onChanged: (e) {
            //     setState(() => this._userChange = e);
            //     print(e);
            //   },
            //   value: 'm',
            //   groupValue: this._userChange,
            // ),
            // Text('F'),
            // Radio(
            //   onChanged: (e) {
            //     setState(() => this._userChange = e);
            //     print(e);
            //   },
            //   value: 'f',
            //   groupValue: this._userChange,
            // ),
            RadioListTile(
              title: Text('Trans'),
              value: 'T',
              groupValue: this._userChange,
              onChanged: (e) {
                setState(() {
                  this._userChange = e;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
