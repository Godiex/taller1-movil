import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taller1/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  final GlobalWidgetDialog globalDialog = GlobalWidgetDialog();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: BaseScreen(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: const AssetImage('assets/images/logo_login.png'),
                height: size.height * 0.31,
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
                  text: "Entrar",
                  press: () => {},
                  textColor: Colors.white
              ),
              const Padding(
              padding: EdgeInsets.all(5.0),
                child: LoginDetail(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginDetail extends StatelessWidget {
  const LoginDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "¿Aun no tienes cuenta? ",
          style: TextStyle(color: mainColor),
        ),
        GestureDetector(
          onTap: () => {
            Navigator.pushNamed(context, 'register')
          },
          child: const Text(
            "Registrate Aca",
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}