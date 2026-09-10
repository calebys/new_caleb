import 'package:flutter/material.dart';
import 'package:new_caleb/page/alertdialog.dart';
import 'package:new_caleb/page/appbar.dart';
import 'package:new_caleb/page/drawer.dart';
import 'package:new_caleb/page/alertdialog.dart';
import 'package:new_caleb/page/simpledialog.dart';
import 'package:new_caleb/page/bottomsheet.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomsheetPage(),
    );
  }
}