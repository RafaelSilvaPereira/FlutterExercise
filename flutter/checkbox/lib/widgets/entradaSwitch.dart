import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _userChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Switch(
            value: _userChange,
            onChanged: (e) {
              setState(() {
                this._userChange = e;
              });
            },
          )
        ],
      ),
    );
  }
}
