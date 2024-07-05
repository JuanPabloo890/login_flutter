import 'package:flutter/material.dart';
import 'firstScreen.dart'; // Importa la pantalla de inicio de sesión

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Establece LoginScreen como pantalla inicial
    );
  }
}
