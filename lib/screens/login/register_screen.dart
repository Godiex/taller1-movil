import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taller1/widgets/widgets.dart';
import '../../models/user.dart';

class RegisterScreen extends StatefulWidget {
  final User user;

  const RegisterScreen({
    super.key,
    required this.user
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final GlobalWidgetDialog globalDialog = GlobalWidgetDialog();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController surnameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController userNameController = TextEditingController();

  void createUser(){
    if (nameController.text.isNotEmpty &&
        surnameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        userNameController.text.isNotEmpty) {
      widget.user.name = nameController.text;
      widget.user.surname = surnameController.text;
      widget.user.userName = userNameController.text;
      widget.user.password = passwordController.text;
      Navigator.pop(context, widget.user);
    } else {
      globalDialog.seeDialogInfo(context, "Hay Uno O Mas Campos Vacios");
    }
  }

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
                obscureText: false,
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
                  press: createUser,
                  textColor: Colors.white
              ),
            ],
          ),
        ),
      ),
    );
  }
}