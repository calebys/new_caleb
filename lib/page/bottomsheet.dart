import 'package:flutter/material.dart';
import '../style/bottomsheet_style.dart';

class BottomsheetPage extends StatelessWidget {
  const BottomsheetPage({super.key});

  void _mostrarBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.share),
                title: Text("Compatilhar", style: BottomsheetStyle.textoOpcao),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.link),
                title: Text("Copiar link", style: BottomsheetStyle.textoOpcao),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo BottomSheet"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarBottomSheet(context),
          child: const Text("Mais Opções"),
        ),
      ),
    );
  }
}