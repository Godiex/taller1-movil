import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taller1/screens/login/register_screen.dart';
import 'package:taller1/widgets/widgets.dart';

import '../../models/user.dart';

class LoginScreen extends StatelessWidget {
  final GlobalWidgetDialog globalDialog = GlobalWidgetDialog();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<User> users = [];

    void registerUser(context) async{
      final route = MaterialPageRoute(builder: (context) => RegisterScreen(user:  User(),));
      final user = await Navigator.push(context, route) as User;
      users.add(user);
      globalDialog.seeDialogInfo(context, "usuario registrado con exito");
    }

    void login(){
      if(passwordController.text.isNotEmpty && userNameController.text.isNotEmpty){
        int exist = users.indexWhere((user) => user.password == passwordController.text && user.userName == userNameController.text);
        if(exist == -1){
          globalDialog.seeDialogError(context, 'No existe el usuario');
        }
        else{
          Navigator.pushNamed(context, 'listview2');
        }
      }
      else{
        
      }
    }

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
                  press: login,
                  textColor: Colors.white
              ),
              Padding(
              padding: const EdgeInsets.all(5.0),
                child: LoginDetail(registerUser: registerUser),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginDetail extends StatelessWidget {

  final Function registerUser;

  const LoginDetail({
    Key? key,
    required this.registerUser,
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
            registerUser(context, )
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