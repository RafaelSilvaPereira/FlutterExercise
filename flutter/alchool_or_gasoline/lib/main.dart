import 'package:alchool_or_gasoline/widgets/input.dart';
import 'package:alchool_or_gasoline/widgets/laodingButton.dart';
import 'package:alchool_or_gasoline/widgets/logo.dart';
import 'package:alchool_or_gasoline/widgets/responseButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gasolina',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasController = new MoneyMaskedTextController();

  var _alcController = new MoneyMaskedTextController();

  bool completed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          completed ? buildResponseObject(context, false) : buildInputColumn(),
          buildActionButton(context, false),
        ],
      ),
    );
  }

  Column buildActionButton(BuildContext context, bool complete) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: LoadingButton(
            busy: false,
            cor: Colors.white,
            textColor: Theme.of(context).primaryColor,
            label: "CALCULAR",
            function: () {
              setState(() {
                this.completed = complete;
              });
            },
          ),
        ),
      ],
    );
  }

  Column buildInputColumn() {
    return Column(
      children: <Widget>[
        Input(
          controller: _gasController,
          label: "Gasolina",
        ),
        Input(
          controller: _alcController,
          label: "Alcool",
        ),
      ],
    );
  }

  ResponseObject buildResponseObject(BuildContext context, bool completed) {
    return ResponseObject(
      responseColor: Theme.of(context).primaryColor,
      boxColor: Colors.white70,
      response: "VALE MAIS APENA USAR ALGO",
      botao: LoadingButton(
        busy: false,
        cor: Theme.of(context).primaryColor,
        textColor: Colors.white70,
        label: "CALCULAR NOVAMENTE",
        function: () {
          setState(() {
            this.completed = completed;
          });
        },
      ),
    );
  }

  Future calculate() {
    double alc = double.parse(
            this._alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double gas = double.parse(
            this._alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double res = alc / gas;

    setState(() {
      buildActionButton(context, true);
    });
  }
}
