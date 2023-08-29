
import 'package:aula_lista_view/minha_lista.dart';
import 'package:flutter/material.dart';
//-----------------------------------------------------
//Atalho para método statefulWidget supremo tribunal federal = stf 
//-----------------------------------------------------
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
//-----------------------------------------------------
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Utilizando ListView"),
       ),
      body: Center(
        child: MinhaLista(),),
    );
  }
}