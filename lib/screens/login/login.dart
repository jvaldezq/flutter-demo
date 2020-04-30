import 'package:demo/Utils/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDarkBlue,
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              child: Text(
                'DEMO',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
              padding: const EdgeInsets.only(bottom: 60.0),
            ),
            TextFormField(
                decoration: const InputDecoration(
                    hintText: 'ID Login',
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white),
            TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white)),
                obscureText: true,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: colorBrightBlue,
                child: Text('Login'),
                padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
