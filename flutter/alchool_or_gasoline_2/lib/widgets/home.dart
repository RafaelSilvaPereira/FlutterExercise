import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controllers c = Controllers();

  String response = "";

  void calcular() {
    double alcValue = double.tryParse(this.c.controller.text);
    double gasValue = double.tryParse(this.c.controller2.text);

    if (alcValue == null || alcValue < 0 || gasValue == null || gasValue < 0)
      response =
          "O numero passado foi invalido, informe um numero valido e calcule novamente";
    else
      response = (alcValue / gasValue > .7)
          ? "Vale apena usar gasolina"
          : "Vale apena usar alcool";
    setState(() {
      this.response = response;
    });
  }

  void getInvalidChar(String string) {
    if (string.contains(",")) print("erro");
  }

  AppBar _appbar() => AppBar(
        title: Text(
          'Alcool ou Gasolina 2.0v',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      );

  ListView _body(Controllers c, Function callback, Function callback2,
          String response) =>
      ListView(
        children: <Widget>[
          /** Imagem */
          Padding(
            padding: EdgeInsets.all(18),
            child: Image.asset("assets/logo.png"),
          ),
          /** Texto */
          Padding(
            padding: EdgeInsets.all(18),
            child: Container(
              padding: EdgeInsets.all(25),
              width: 20,
              child: Text(
                'Saiba qual é a melhor opção para abstecimento do seu carro',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          /** Input 2 */
          Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              onChanged: callback2,
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor do alcool",
              ),
              style: TextStyle(
                fontSize: 23,
                color: Colors.black,
              ),
              controller: c.controller,
            ),
          ),
          /** Input 1 */
          Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              onChanged: callback2,
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor da gasolina",
              ),
              style: TextStyle(
                fontSize: 23,
                color: Colors.black,
              ),
              controller: c.controller2,
            ),
          ),
          /** Botao */
          Padding(
              padding: EdgeInsets.all(18),
              child: RaisedButton(
                onPressed: callback,
                child: Text(
                  'GO!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.yellowAccent,
                autofocus: true,
              )),
          /** Botao */
          Text(
            response,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this._appbar(),
      body: this._body(c, calcular, this.getInvalidChar, this.response),
    );
  }
}

class Controllers {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
}
