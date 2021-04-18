import 'package:flutter/material.dart';
import 'package:projeto_flutter/telas/login_tela.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Flutter',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
