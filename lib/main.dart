import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MenuPrincipalApp());
}

class MenuPrincipalApp extends StatelessWidget {
  const MenuPrincipalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú de Proyectos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
