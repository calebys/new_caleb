import 'package:flutter/material.dart';
import '../style/simpledialog_style.dart';

class SimpledialogPage extends StatelessWidget {
  const SimpledialogPage({super.key});

  void _mostrarSimpledialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("Escolha um idioma"),
          children: [
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Português"),
              child: Text("Português", style: SimpledialogStyle.textoOpcao),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Inglês"),
              child: Text("Inglês", style: SimpledialogStyle.textoOpcao),
            ),
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplon SimpleDialog"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarSimpledialog(context),
          child: const Text("Escolher idioma"),
        ),
      ),
    );
  }
}