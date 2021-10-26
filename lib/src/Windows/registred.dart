import 'package:flutter/material.dart';
import 'package:floricultura/src/Windows/registre.dart';

registre(String password, String password2) {
  if(password == password2) return true;
  return false;
}

class Registred extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String password = '', password2 = '';
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 232, 236, 10),
      body: new Container(
          padding: new EdgeInsets.all(60),
          child: new Form(
            // key: 1,
            child: new ListView(
              children: <Widget>[
                new Image(
                  height: 60,
                  image: AssetImage('assets/pngwing.com.png'),
                ),
                new TextFormField(
                    keyboardType: TextInputType
                        .emailAddress, // Use email input type for emails.
                    validator: (value) =>
                        (value!.isEmpty || !value.contains('@'))
                            ? 'use the @ char.'
                            : null,
                    decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'E-mail Address')),
                new TextFormField(
                    keyboardType:
                        TextInputType.text, // Use email input type for emails.

                    decoration: new InputDecoration(
                        hintText: '99999999999', labelText: 'CPF')),

                new TextFormField(
                    obscureText: true, // Use secure text for passwords.
                    onChanged: (String value) {
                      password = value;
                    },
                    decoration: new InputDecoration(
                        hintText: 'Password',
                        labelText: 'Enter your password')),
                new TextFormField(
                    obscureText: true, // Use secure text for passwords.
                    onChanged: (String value) {
                      password2 = value;
                    },
                    decoration: new InputDecoration(
                        hintText: 'Repeat password',
                        labelText: 'Enter your password again')),
                new Container(
                  width: screenSize.width,
                  child: new RaisedButton(
                    child: new Text(
                      'Cadastrar',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: () => registre(password, password2)
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          )
                        : showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                title: const Text('Atenção'),
                                content: const Text('Login incorreto')),
                          ),
                    color: Colors.pink,
                  ),
                  margin: new EdgeInsets.only(top: 20.0),
                ),
                new Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: new GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                        },
                        child: Text(
                          'Já tenho cadastro',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.red.withOpacity(0.8)),
                        ))) // We will add fields here.
              ],
            ),
          )),
    );
  }
}
