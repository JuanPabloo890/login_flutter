import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Text(
          'Bienvenido a la Segunda Pantalla',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}