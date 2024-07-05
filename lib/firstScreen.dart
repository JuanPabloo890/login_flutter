import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'user.dart'; // Importa la clase User

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Username TextField
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),

            // Password TextField
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.vpn_key_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),

            // Login Button
            ElevatedButton(
              onPressed: () {
                // Verificar las credenciales (datos quemados)
                User user =
                    User(username: 'juan@gmail.com', password: 'juan123');
                if (usernameController.text == user.username &&
                    passwordController.text == user.password) {
                  // Credenciales correctas, navegar a la segunda pantalla
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                } else {
                  // Mostrar mensaje de error o tomar alguna acción adicional
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error de inicio de sesión'),
                        content: Text(
                            'Credenciales incorrectas. Inténtalo de nuevo.'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
