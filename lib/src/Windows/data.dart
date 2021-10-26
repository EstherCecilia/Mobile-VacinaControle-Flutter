import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(237, 232, 236, 10),
        body: new Container(
            padding: new EdgeInsets.all(20),
            child: new ListView(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    const Text("Nome: "),
                    const Text("Esther C S"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    const Text("CPF: "),
                    const Text("999999999999"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    const Text("Email: "),
                    const Text("email@gmail.com"),
                  ],
                )
              ],
            )));
  }
}
