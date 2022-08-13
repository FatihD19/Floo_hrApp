import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hr_appb/services/auth_services.dart';
import 'package:hr_appb/services/globals.dart';
import 'package:hr_appb/view/home.dart';

import 'package:http/http.dart' as http;

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Home(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text('PT Floo Integra Digital')),
              ),
              ListView(
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Image.asset('assets/lghrrco.png')),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(
                          top: 48, left: 10.0, bottom: 13.0),
                      child: const Text(
                        'Login your Account',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      onChanged: (value) {
                        _email = value;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Floo email',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        _password = value;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          loginPressed();
                        },
                      )),
                ],
              )
            ],
          )),
    );
  }
}
