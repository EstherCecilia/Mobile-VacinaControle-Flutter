import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(237, 232, 236, 10),
        body: new Container(
            padding: new EdgeInsets.all(80),
            child: new Column(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    const Text("Descrição: \n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text("Processo pelo qual o cidadão doa o seu sangue para fins terapêuticos a pacientes em tratamento na própria Fundação e/ou de instituições de saúde públicas e/ou privadas."),
                  ],
                ),

                new Column(
                  children: <Widget>[
                    const Text("\nQuem pode utilizar este serviço\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text("Pessoas entre 16 e 69 anos em boas condições gerais de saúde, que pesam acima de 50 kg. Essas pessoas devem ainda possuir  estilo de vida saudável e não se expor a situações com risco acrescido para aquisição de doenças infecciosas e sexualmente transmissíveis. Mulheres, mesmo se menstruadas ou em uso de anticoncepcionais."),
                  ],
                )
              ],
            )));
  }
}
