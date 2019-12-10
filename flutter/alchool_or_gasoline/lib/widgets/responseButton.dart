import 'package:alchool_or_gasoline/widgets/laodingButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponseObject extends StatelessWidget {
  LoadingButton botao;
  String response;
  Color responseColor;
  Color boxColor;
  ResponseObject({
    @required this.botao,
    @required this.response,
    @required this.responseColor,
    @required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: this.boxColor,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.all(1.5),
        width: 0,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              this.response,
              style: TextStyle(
                fontFamily: "Big Shoulders Display",
                fontSize: 50,
                color: this.responseColor,
              ),
            ),
            this.botao,
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
