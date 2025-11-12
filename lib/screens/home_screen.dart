
import 'package:flutter/material.dart';
import 'package:examenfinal/screens/proyecto1/proyecto1_app.dart';
import 'package:examenfinal/screens/proyecto2/proyecto2_app.dart';
import 'package:examenfinal/screens/proyecto3/proyecto3_app.dart';

void main() {
  runApp(const MenuPrincipalApp());
}

class MenuPrincipalApp extends StatelessWidget {
  const MenuPrincipalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú de Proyectos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Proyectos'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProjectCard(
                context,
                title: 'Proyecto 1',
                description: 'Calculadora Basica',
                icon: Icons.apps,
                color: Colors.blue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Proyecto1App()),
                  );
                },
              ),
              const SizedBox(height: 20),
              _buildProjectCard(
                context,
                title: 'Proyecto 2',
                description: 'Mensajeria si/no app',
                icon: Icons.dashboard,
                color: Colors.green,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Proyecto2App()),
                  );
                },
              ),
               const SizedBox(height: 20),
              _buildProjectCard(
                context,
                title: 'Proyecto 3',
                description: 'Contador de Clicks',
                icon: Icons.dashboard,
                color: const Color.fromARGB(255, 233, 45, 229),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Proyecto3App()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(icon, size: 60, color: color),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}