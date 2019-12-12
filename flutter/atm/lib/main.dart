import 'package:atm/widgets/aTMConsultoriaHome.dart';
import 'package:flutter/material.dart';

void main() => runApp(ATMConsultoria());

class ATMConsultoria extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATM CONSULTORIA',
      theme: ThemeData(
        primarySwatch: Colors.green,
        buttonColor: Colors.green[400],
        appBarTheme: AppBarTheme(
          color: Colors.green[600],
          textTheme: TextTheme(
            body1: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
      ),
      home: ATMConsultoriaHome(),
    );
  }
}
