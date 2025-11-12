import 'package:flutter/material.dart';

void main() {
  runApp(const Proyecto3App());
}

class Proyecto3App extends StatelessWidget {
  const Proyecto3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 53, 82, 164)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ejercicio 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  int clickCounter = 0;
 
  // Esta es la nueva función que he agregado
  String get clickText {
    if (clickCounter == 1) {
      return 'CLICK';
    } else {
      return 'CLICKS';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors . indigo . shade600,
        title: const Center(child: Text('Contador', style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () { 
              setState(() {
                clickCounter = 0; 
              });
            },
          ),
        ], 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter', 
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)
            ), 
            // El widget Text ahora mostrará el texto "CLICK" o "CLICKS"
            Text(
              clickText,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (clickCounter > 0) { // Validamos que no baje de cero
                  clickCounter--;  
                }
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;  
              });
            },
          ),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed, 
      child: Icon(icon)
    );
  }
}