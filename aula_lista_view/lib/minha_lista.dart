// minha_lista.dart
import 'package:flutter/material.dart';

class MinhaLista extends StatefulWidget {
  const MinhaLista({super.key});

//---------------------------------------------------------------------
  @override
  _MinhaListaState createState() => _MinhaListaState();
}

//------------------------------------------------------------------------
class _MinhaListaState extends State<MinhaLista> {
  //---------------------------------------------Se copiar o códdigo e prescionar as teclas alt + shift + a seta para baixo-----------
  final listaDeContatos = [
    {'nome': 'José', 'e-mail': 'zezinho@hotmail.com', 'telefone': '444'},
    {'nome': 'Maria', 'e-mail': 'mariazinha@hotmail.com', 'telefone': '555'},
    {'nome': 'Rubens', 'e-mail': 'rubenszinho@hotmail.com', 'telefone': '668'},
    {'nome': 'Bruna', 'e-mail': 'bruninha@hotmail.com', 'telefone': '777'},
    {'nome': 'Lucas', 'e-mail': 'luquinhas@hotmail.com', 'telefone': '888'},
  ];
//----------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaDeContatos.length,
      itemBuilder: (context, i) {
        var contatos = listaDeContatos[i];
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [  
                  Text(contatos['nome'].toString(),),
                  Text(contatos['e-mail'].toString(),),
                  Text(contatos['telefone'].toString(),),
                ],
              ),
              Divider(color: Colors.black12,
              ),
            ],
          ),
        ); 
      //Text(contatos['nome'].toString());
      //------------Para converter qualquer coisa em string é só colocar no final do código o ".toString"----------
      //Outro atalho interessante é apertar as teclas crtl + . que é um atalho
      },
    );
  }
}
