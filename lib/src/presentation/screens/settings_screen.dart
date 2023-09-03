import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
    required this.instrumentName,
  });

  final String instrumentName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text('Configuración'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue,
            child: const Text(
              '¿Cambiar instrumento?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          GestureDetector(
            onTap: () {
              instrumentName == 'Piano'
                  ? Navigator.pushReplacementNamed(context, '/piano')
                  : Navigator.pushReplacementNamed(context, '/marimba');
            },
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: Text(
                instrumentName,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue,
            child: const Text(
              'Creado por',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            child: const Text(
              'Ramón de Jesús Ortega',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
