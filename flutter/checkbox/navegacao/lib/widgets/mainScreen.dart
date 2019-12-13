import 'package:flutter/material.dart';
import 'package:navegacao/widgets/secondScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conteudo Principal'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print('ok');

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            color: Colors.greenAccent,
            child: Text("Teste"),
          )
        ],
      ),
    );
  }
}
