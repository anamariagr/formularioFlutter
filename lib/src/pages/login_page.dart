import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled3/widgets/logo.dart';
import 'package:untitled3/widgets/input_general.dart';
import 'package:untitled3/widgets/Button_general.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //logo
          Logo(topValue: 10),

          //main login
          MainLogin()
        ],
      ),
    );
  }
}

class MainLogin extends StatelessWidget {
  const MainLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
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
              InputGeneral(icon: Icons.email, text: 'Correo electronico'),
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
                      '¿Olvidaste tu correo?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 25, 38, 83),
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '¿Necesitas ayuda?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 25, 38, 83),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              //button ingresar
              ButtonGeneral(
                text: 'Ingresar',
                colorValue: Color.fromARGB(255, 25, 38, 83),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}





