import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:examenfinal/screens/proyecto2/config/app_theme.dart';
import 'package:examenfinal/screens/proyecto2/presentacion/provider/chat_provider.dart';
import 'package:examenfinal/screens/proyecto2/presentacion/chat/chat_screen.dart';

void main() {
  runApp(const Proyecto2App());
}

class Proyecto2App extends StatelessWidget {
  const Proyecto2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Si No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}