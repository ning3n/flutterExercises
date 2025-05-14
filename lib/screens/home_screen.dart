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
            SizedBox(height: 100),
            Text('Hola! Soy Miwel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 100),
            SizedBox(height: 50, width: 200, 
              child: TextButton(
                onPressed: 
                  () => showDialog<String>(
                    context: context,
                    builder:
                      (BuildContext context) => AlertDialog(
                        title: const Text('Ejercicio 1'),
                        content: const Text('Prueba de agregar un alertDialog a un textButton'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                            style: TextButton.styleFrom(foregroundColor: Colors.purpleAccent, backgroundColor: Colors.white),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            style: TextButton.styleFrom(foregroundColor: Colors.purpleAccent, backgroundColor: Colors.white),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                  ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purpleAccent
                ),
                child: const Text('Saluda!'),
              )
            ),
          ],
        ),
      ),
    );
  }
}

void saludar(){
  
}