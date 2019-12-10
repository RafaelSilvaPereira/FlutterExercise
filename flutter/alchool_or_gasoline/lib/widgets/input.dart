import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var controller = new MoneyMaskedTextController();

  var label = "";

  Input({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 110,
          alignment: Alignment.centerLeft,
          child: Text(
            this.label,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
              fontSize: 45,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: this.controller,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontFamily: "Big Shoulders Display",
              fontSize: 45,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
