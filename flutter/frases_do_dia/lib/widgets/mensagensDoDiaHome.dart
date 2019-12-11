import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frases_do_dia/src/mensagemController.dart';
import 'package:frases_do_dia/style/cor.dart';
import 'package:frases_do_dia/style/text.dart';

class MensagensDoDiaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mensagens do dia',
          style: TextStyle(color: Cor.altText),
        ),
        backgroundColor: Cor.appBar,
      ),
      body: MensagemDoDiaContainer(),
    );
  }
}

class MensagemDoDiaContainer extends StatefulWidget {
  @override
  _MensagemDoDiaContainerState createState() => _MensagemDoDiaContainerState();
}

class _MensagemDoDiaContainerState extends State<MensagemDoDiaContainer> {
  final MensagemController _mensagemController = new MensagemController();
  String mensagem = new MensagemController().getMensagem();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      decoration: BoxDecoration(
        color: Cor.backGround,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50),
            child: Image.asset(
              "assets/img/Double-J-Design-Ravenna-3d-Books.ico",
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              this.mensagem,
              style: TextS.contentText,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            child: Text("Buscar nova frase", style: TextS.contentText),
            onPressed: () {
              setState(() {
                this.mensagem = this._mensagemController.getMensagem();
              });
            },
            color: Cor.mainButtomColor,
          ),
        ],
      ),
    );
  }
}
