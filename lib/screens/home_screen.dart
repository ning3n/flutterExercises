import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hola! Soy Miwel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 50, width: 100, child: ElevatedButton(onPressed: saludar, child: Text('Saludos')),)
          ],
        ),
      ),
    );
  }
}

void saludar(){
  AlertDialog(
  title: Text('BIENVENIDO A LOS RETOS'),
  content: Text('Hola, soy Miwel! Bienvenidos.'),
  backgroundColor: const Color(0xFFEFEFEF),
  shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.green, width: 2),
    borderRadius: BorderRadius.circular(10),
  ),
  actions: <Widget>[
    TextButton(
      child: Text('Dismiss'),
      onPressed: () {
        
      },
    ),
  ],
);
}