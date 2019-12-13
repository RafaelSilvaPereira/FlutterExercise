import 'package:checkbox/widgets/entradaCheckBox.dart';
import 'package:checkbox/widgets/entradaRadio.dart';
import 'package:checkbox/widgets/entradaSwitch.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EntradaSwitch(),
    );
  }
}
