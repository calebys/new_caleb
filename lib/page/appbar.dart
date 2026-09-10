import 'package:flutter/material.dart';
import '../style/appbar_style.dart';

class AppbarPage extends StatelessWidget{
  const AppbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarStyle.corFundo,
        elevation: 4,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: AppbarStyle.corIcone),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Icone de menu selecionado")),
            );
          },
        ),
        title: Text("Exemplo AppBar", style: AppbarStyle.textoTitulo),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppbarStyle.corIcone),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Icone de busca selecionado")),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: AppbarStyle.corIcone),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Icone de favorito selecionado")),
              );
            },
          ),
        ],
      ),
    );
  }
}