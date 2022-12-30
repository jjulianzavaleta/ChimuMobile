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
      // appBar: AppBar(
      //   title: const Text("ChimuApp"),

      // ),
      body: cuerpo(

      ),
    );
  }
  
}


Widget cuerpo(){
  return Container(
     decoration: BoxDecoration(
        image: DecorationImage(image : NetworkImage("https://i.pinimg.com/564x/76/21/40/762140944f91771490f53c6ef8f2ec03.jpg"),
        fit: BoxFit.cover
       )
     ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campoUsuario(),
          campoContra(),
          btnEntrar(),
        ],
      )
    ),
  );
}


Widget nombre(){
  return Text("Ingresar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 25.0, fontWeight: FontWeight.w800),);
}
Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
Widget campoContra(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
Widget btnEntrar(){
  return Container(
    child: ElevatedButton(
      child: Text("Aceptar"),
      onPressed: (){
        var t = DateTime.now();
        print(t);
            }
      ),
  );

}