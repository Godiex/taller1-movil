import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taller1/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalWidgetDialog globalDialog = GlobalWidgetDialog();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Center(
          child: Text('Registro de persona'),
        ),
      ),
      body: BaseScreen(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RadialInput(
                controller: nameController,
                color: Colors.white,
                icon: FontAwesomeIcons.userAlt,
                label: "Primer y Segundo Nombre",
                obscureText: false,
              ),
              RadialInput(
                controller: surnameController,
                color: Colors.white,
                icon: FontAwesomeIcons.lock,
                label: "Primer y Segundo Apellido",
                obscureText: true,
              ),
              RadialInput(
                controller: userNameController,
                color: Colors.white,
                icon: FontAwesomeIcons.userAlt,
                label: "Nombre de Usuario",
                obscureText: false,
              ),
              RadialInput(
                controller: passwordController,
                color: Colors.white,
                icon: FontAwesomeIcons.lock,
                label: "Contraseña",
                obscureText: true,
              ),
              RadialButton(
                  color: mainColor,
                  text: "Registrar",
                  press: () => {},
                  textColor: Colors.white
              ),
            ],
          ),
        ),
      ),
    );
  }
}