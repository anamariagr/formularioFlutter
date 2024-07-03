import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/ui/pages/ExtrusionReport/whidget/logo.dart';
import 'package:untitled3/app/ui/pages/ExtrusionReport/whidget/input_general.dart';
import 'package:untitled3/app/ui/pages/ExtrusionReport/whidget/button_general.dart'; 
import 'package:untitled3/app/controllers/Login_controller.dart'; 

class LoginPage extends StatelessWidget {
  static String id = 'login_page';
  
  final LoginController loginController = Get.put(LoginController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo
          Logo(topValue: 40),
          // Main login
          MainLogin(),
        ],
      ),
    );
  }
}

class MainLogin extends StatelessWidget {
  const MainLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              'Bienvenido',
              style: TextStyle(
                color: Color.fromARGB(255, 25, 38, 83),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Logueate en tu cuenta',
              style: TextStyle(
                color: Color.fromARGB(255, 25, 38, 83),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            InputGeneral(icon: Icons.email, text: 'Correo electrónico'),
            const SizedBox(height: 19),
            InputGeneral(icon: Icons.lock, text: 'Contraseña'),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color.fromARGB(255, 25, 38, 83),
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 38, 83),
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '¿Necesitas ayuda?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 38, 83),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Botón ingresar
            ButtonGeneral(
              text: 'Ingresar',
              colorValue: Color.fromARGB(255, 25, 38, 83),
              fontSize: 14,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
