// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Olá mundo - SI",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Olá mundo - SI"),
              backgroundColor: Color(0xff052056),
            ),
            body: Builder(
                builder: (context) => Center(
                        child: Column(
                      children: [
                        Text(
                          'Bem vindo ao App SI',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                        Text(
                          'Descobrindo Flutter',
                          style: TextStyle(fontSize: 20, color: Colors.black38),
                        ),
                        Image.asset('assets/images/logo_si.png', height: 350),
                        ElevatedButton(
                            onPressed: (() => contactUs(context)),
                            child: Text("Fale conosco"))
                      ],
                    )))));
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Fale conosco'),
          content: Text('Mande um email para sistemastoledo@fag.edu.br'),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
