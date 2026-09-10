import 'package:flutter/material.dart';
import '../style/drawer_style.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Exemplo de Drawer"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: DrawerStyle.corCarbecalho),
              child: const Text("Menu",
              style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text("Perfil", style: DrawerStyle.textItem),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text("Configurações", style: DrawerStyle.textItem),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: const Center(child: Text("deslize a partir da esquerda ou toque no icone de menu")),
    );
  }
}