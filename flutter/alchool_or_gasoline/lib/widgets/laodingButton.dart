import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  Color cor = Colors.white;
  String label = "teste";
  Function function;
  Color textColor;
  bool busy = false;

  LoadingButton({
    @required this.label,
    @required this.cor,
    @required this.function,
    @required this.textColor,
    @required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    final loadButton = Container(
      margin: EdgeInsets.all(30),
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: cor,
      ),
      child: FlatButton(
        child: Text(
          this.label,
          style: TextStyle(
            color: this.textColor,
            fontSize: 30,
            fontFamily: "Big Shoulders Display",
          ),
        ),
        onPressed: this.function,
      ),
    );

    final loop = Container(
      alignment: Alignment.center,
      height: 50,
      child: RefreshProgressIndicator(
        backgroundColor: this.cor,
      ),
    );

    if (busy) {
      return loop;
    } else {
      return loadButton;
    }
  }
}
