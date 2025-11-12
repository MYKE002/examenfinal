import 'package:flutter/material.dart';
import 'package:examenfinal/screens/proyecto1/pantalla/pantalla_calcu.dart';

void main() {
  runApp(const Proyecto1App());
}

class Proyecto1App extends StatelessWidget {
  const Proyecto1App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: PantallaCalculadora(),
    );
  }
}
