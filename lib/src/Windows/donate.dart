import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromRGBO(237, 232, 236, 10),
            body: new Container(
                padding: new EdgeInsets.all(100),
                child: new ListView(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        const Image(
                          height: 100,
                          image: AssetImage('assets/heart.gif'),
                        ),
                        const Text("  2 meses"),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        const Icon(Icons.sentiment_very_satisfied),
                        const Text("  Ultima doação:  "),
                        const Text("20/06/2021"),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        const Icon(Icons.sentiment_very_satisfied),
                        const Text("  Pode doar:  "),
                        const Text("23/06/2021"),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        const Icon(Icons.sentiment_very_satisfied),
                        const Text("  Tipo sanguineo:  "),
                        const Text("B+"),
                      ],
                    )
                  ],
                )));
  }
}
