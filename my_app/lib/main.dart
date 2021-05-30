// Import MaterialApp and other widgets which we can use to quickly create a material app
import 'package:flutter/material.dart';

// Code written in Dart starts exectuting from the main function. runApp is part of
// Flutter, and requires the component which will be our app's container. In Flutter,
// every component is known as a "widget".
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 125.0,
                    width: 125.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email adress',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  padding: EdgeInsets.fromLTRB(0, 20, 20, 30),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: Colors.blue,
                  child: ButtonTheme(
                    child: FlatButton(
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(fontSize: 18),
                        ),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
