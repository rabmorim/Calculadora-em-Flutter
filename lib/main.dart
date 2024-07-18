
import 'package:flutter/material.dart';
import 'package:primeiro_app/calcular.dart';

void main(){
  runApp(const MeuApp());
 }

 class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora Simples",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ) ,
      home: const Calculadora() ,
    );
  }

 }