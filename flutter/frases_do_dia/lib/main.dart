import 'package:flutter/material.dart';
import 'package:frases_do_dia/style/cor.dart';
import 'package:frases_do_dia/widgets/mensagensDoDiaHome.dart';

void main() => runApp(MensagensDoDiaApp());

class MensagensDoDiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mensagens do dia",
      theme: ThemeData(primaryColor: Cor.backGround),
      home: MensagensDoDiaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
