import 'package:flutter/material.dart';
// Extends StatefulWidget nos diz que a calculadora herda e faz parte do StatefulWidget
class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  //Polimorfismo (override), você reescreve um método do pai(mae) ou ja existente.
  @override
  State createState() {
    return _CalculadoraState();
  }
  }
 

//é uma classe filha da classe calculadora e extende e herda ela ( extends State<Calculadora>)
class _CalculadoraState extends State<Calculadora>{
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

          //Entrada de valores.
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Informe o valor 1") ,
            controller: t1,
          ),

          //Entrada de valores.
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
              ),
               MaterialButton(
                color: Colors.blueGrey,
                onPressed: subtrair ,
                child: const Text(
                  "-"
                ),
              ),
                MaterialButton(
                color: Colors.blueGrey,
                onPressed: multiplicar ,
                child: const Text(
                  "*"
                ),
              ),
                MaterialButton(
                color: Colors.blueGrey,
                onPressed: dividir ,
                child: const Text(
                  "/"
                ),
              ),
                MaterialButton(
                color: Colors.blueGrey,
                onPressed: resto ,
                child: const Text(
                  "%"
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

  num num1 =0 ;
  num num2 =0;
  dynamic resultado = 0;
  
  TextEditingController t1 = TextEditingController(text:"");
  TextEditingController t2 = TextEditingController(text:"");




  //Métodos
  void somar (){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 - num2;
    });
  }

    void multiplicar(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 * num2;
    });
  }

    void dividir(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      if(num2 == 0){
        resultado = "Divisão invalida, divisão por 0 nao permitida";
      } else{
        resultado = num1 / num2;
      }
    });
  }

    void resto(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      if( num2 == 0){
        resultado = "Operação inválida.";
      } else{
        resultado = num1 % num2;
      }
    });
  }

  
} // fecha a classe calculadoraState