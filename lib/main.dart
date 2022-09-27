import 'package:flutter/material.dart';
import 'package:taller1/screens/screens.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: 'login',
      routes: {
        'login':    (BuildContext context) => LoginScreen(),
        'register': (BuildContext context) => RegisterScreen(),
      },
    );
  }
}
