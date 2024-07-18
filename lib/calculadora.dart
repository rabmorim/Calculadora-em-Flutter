import 'package:flutter/material.dart';
// Extends StatefulWidget nos diz que a calculadora herda e faz parte do StatefulWidget
class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  //Polimorfismo (override), você reescreve um método do pai(mae) ou ja existente.
  @override
  State createState() =>  CalculadoraState();
  }
 

//é uma classe filha da classe calculadora e extende e herda ela ( extends State<Calculadora>)
class CalculadoraState extends State<Calculadora>{
  @override
  Widget build(BuildContext context) {
    //Scaffold é uma nova estrutura , novo esqueleto contendo AppBar,
    // elementos, body
    //... etc
   return  Scaffold(
    appBar:  AppBar(
      title: const Text(":: Calculadora :: "),
      centerTitle: true,
      backgroundColor: Colors.grey,
    ) ,
    body: Container(
      padding: const EdgeInsets.all(40),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          
          Text(
            "Resultado: $resultado ",
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),
          ),
          //Padding resultado => inputs
          const Padding(
            padding: 
            EdgeInsets.only(bottom: 20)),

          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Informe o valor 1") ,
            controller: t1,
          ),

          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Informe o valor 2") ,
            controller: t2,
          ),
          //Espaçamento entre os inputs
          const Padding(
            padding: EdgeInsets.only(top: 40)
          ),

          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
              MaterialButton(
                color: Colors.blueGrey,
                onPressed: somar ,
                child: const Text(
                  "+"
                ),
              )
             ],
          )
        ],
      ) ,
    ) ,
   );
  } // Fecha o widget(metodo) build
  //Atributos
  var num1 =0 ;
  var num2 = 0;
  var resultado = 0;
  
  TextEditingController t1 = TextEditingController(text:"");
  TextEditingController t2 = TextEditingController(text:"");




  //Métodos
  void somar (){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  
} // fecha a classe calculadoraState