import 'package:flutter/material.dart';
void main() => runApp(const chimu());

// ignore: camel_case_types
class chimu extends StatelessWidget {
  
  const chimu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Chimu App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChimuApp"),

      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Hola"),
          onPressed: (){
            var t = DateTime.now();
              print(t);
          }
          ),
        ),
      );
  }
  
}