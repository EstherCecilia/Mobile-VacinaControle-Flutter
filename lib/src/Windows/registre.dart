import 'package:flutter/material.dart';
import 'package:floricultura/src/Windows/home.dart';
import 'package:floricultura/src/Windows/registred.dart';

login(String email, String password) {
  if (email == 'esther@gmail.com' && password == '123') {
    return true;
  }

  return false;
}

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String email = '', password = '';
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
                  height: 100,
                  image: AssetImage('assets/pngwing.com.png'),
                ),
                new TextFormField(
                    keyboardType: TextInputType
                        .emailAddress, // Use email input type for emails.
                    validator: (value) =>
                        (value!.isEmpty || !value.contains('@'))
                            ? 'use the @ char.'
                            : null,
                    onChanged: (String value) {
                      email = value;
                    },
                    decoration: new InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'E-mail Address')),
                new TextFormField(
                    obscureText: true, // Use secure text for passwords.
                    onChanged: (String value) {
                      password = value;
                    },
                    decoration: new InputDecoration(
                        hintText: 'Password',
                        labelText: 'Enter your password')),
                new Container(
                  width: screenSize.width,
                  child: new RaisedButton(
                    child: new Text(
                      'Login',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: () => login(email, password)
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Registred()));
                        },
                        child: Text(
                          'Não tenho cadastro',
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
