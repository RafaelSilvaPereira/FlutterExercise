import 'package:atm/widgets/menoServico.dart';
import 'package:atm/widgets/menuCliente.dart';
import 'package:atm/widgets/menuContato.dart';
import 'package:atm/widgets/menuEmpresa.dart';
import 'package:flutter/material.dart';

class ATMConsultoriaHome extends StatefulWidget {
  @override
  _ATMConsultoriaHomeState createState() => _ATMConsultoriaHomeState();
}

class _ATMConsultoriaHomeState extends State<ATMConsultoriaHome> {
  AssetImage menuServico = AssetImage('assets/img/imagens/menu_servico.png');
  AssetImage menuEmpresa = AssetImage('assets/img/imagens/menu_empresa.png');
  AssetImage menuContato = AssetImage('assets/img/imagens/menu_contato.png');
  AssetImage menuCliente = AssetImage('assets/img/imagens/menu_cliente.png');
  AssetImage detalhesServico =
      AssetImage('assets/img/imagens/detalhes_servico.png');
  AssetImage detalhesContato =
      AssetImage('assets/img/imagens/detalhes_contato.png');
  AssetImage detalhesCliente =
      AssetImage('assets/img/imagens/detalhes_cliente.png');
  AssetImage cliente1 = AssetImage('assets/img/imagens/cliente1.png');
  AssetImage cliente2 = AssetImage('assets/img/imagens/cliente1.png');

  AssetImage logo = AssetImage('assets/img/imagens/logo.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          'ATM CONSULTORIA',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.textTheme.body1.color,
            fontSize: Theme.of(context).appBarTheme.textTheme.body1.fontSize,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 80, top: 150),
                child: Image(
                  image: this.logo,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Image(
                    image: this.menuEmpresa,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuEmpresa()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Image(
                    image: this.menuServico,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuServico()));
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Image(
                    image: this.menuCliente,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuCliente()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Image(
                    image: this.menuContato,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuContato()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
