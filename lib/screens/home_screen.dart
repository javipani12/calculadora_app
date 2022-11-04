import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Atributos de la clase que necesitaremo para que funcione la calculadora

  double valor1 = 0; // Primer valor de la operación
  double valor2 = 0; // Segundo valor de la operación
  
  String operacion = ""; // Lugar donde guardaremos el símbolo de la operación
  String valorMostrar = ""; // Valor que se mostrará por pantalla
  String numIntroducido = ""; // Valor que se actualizará internamente cuando pulsemos un número, símbolo o coma

  // Método con el cual resetearemos el primer valor o el segundo valor introducido
  void limpiarUnValor(){
    numIntroducido = "";
    valorMostrar = "0";

    setState(() {
      
    });
  }
  
  // Método que nos reseteará todos los valores de la operación, incluido el símbolo
  void limpiarTodo(){
    valor1 = 0;
    valor2 = 0;
  
    operacion = "";
    valorMostrar = "";
    numIntroducido = "";

    setState(() {
      
    });
  }

  // Método para borrar el último valor introducido
  void borrarUnNumero(){
    // Comprobamos si es el último valor o si el número no contiene nada
    if (numIntroducido.length == 1 || numIntroducido == "") {
      numIntroducido = "";
      valorMostrar = "0";
    } else {
      // En caso contrario borramos el último dígito
      numIntroducido = numIntroducido.substring(0, numIntroducido.length - 1);
      valorMostrar = numIntroducido;
    }    
    setState(() {
      
    });
  }

  // Los siguientes métodos hacen prácticamente lo mismo, simplemente añaden 
  // un dígito al número en función del botón que pulsemos
  // Sería más sencillo si supiera como pasar el valor del botón por parámetro
  // ya que me ahorraría hacer varios métodos
  void actualizarNumero0(){
    numIntroducido += 0.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero1(){
    numIntroducido += 1.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero2(){
    numIntroducido += 2.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero3(){
    numIntroducido += 3.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero4(){
    numIntroducido += 4.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero5(){
    numIntroducido += 5.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero6(){
    numIntroducido += 6.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero7(){
    numIntroducido += 7.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero8(){
    numIntroducido += 8.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  void actualizarNumero9(){
    numIntroducido += 9.toString();
    valorMostrar = numIntroducido;
    setState(() {
      
    });
  }

  // Los siguientes métodos de las operaciones, como con los métodos anteriores, 
  // realizan prácticamente lo mismo, simplemente cambia el valor de la operación
  // en función del botón pulsado
  void dividir(){
    // Guardamos el valor que se muestra en una variable
    valor1 = double.parse(valorMostrar);
    // El valor inicial de valor1 es 0, por lo tanto, si es diferente
    // de 0 quiere decir que ha cambiado. Además no nos permite hacer ciertas 
    // operaciones con 0, da error
    if(valor1 != 0) {
      // Reiniciamos los valores que se añaden al pulsar un botón y el valor que se muestra
      numIntroducido = "";
      valorMostrar = "0";
      // Guardamos el símbolo de la operación
      operacion = "/";
    }

    setState(() {
        
    });
    
  }

  void multiplicar(){
    valor1 = double.parse(valorMostrar);
    if(valor1 != 0) {
      numIntroducido = "";
      valorMostrar = "0";
      operacion = "*";
    }

    setState(() {
      
    });
  }

  void restar(){
    valor1 = double.parse(valorMostrar);
    if(valor1 != 0) {
      numIntroducido = "";
      valorMostrar = "0";
      operacion = "-";
    }
    setState(() {
      
    });
  }
  
  void sumar(){
    valor1 = double.parse(valorMostrar);
    if(valor1 != 0) {
      numIntroducido = "";
      valorMostrar = "0";
      operacion = "+";
    }

    setState(() {
      
    });
  }

  void porcentaje(){
    valor1 = double.parse(valorMostrar);
    if(valor1 != 0) {
      numIntroducido = "";
      valorMostrar = "0";
      operacion = "%";
    }

    setState(() {
      
    });
  }

  // Divide 1 entre el valor que hayamos indicado y lo muestra directamente por pantalla
  void hacerFunciones(){
    if(numIntroducido != "") {
      // Guardamos el valor mostrado en una variable
      valor1 = double.parse(valorMostrar);
      // Realizamos la operación
      double funcion = 1 / valor1;

      // Se muestra la operación
      valorMostrar = funcion.toString();

      // Reiniciamos el numero introducido y el valor de valor1
      numIntroducido = "";
      valor1 = 0;
    }

    setState(() {
      
    });

    // Realizamos lo mismo en los siguientes dos métodos
  }

  // Eleva a dos el valor indicado y lo muestra directamente por pantalla
  void elevar(){
    if(numIntroducido != "") {
      valor1 = double.parse(valorMostrar);
      num elevar = pow(valor1, 2);

      valorMostrar = elevar.toString();
      numIntroducido = "";
      valor1 = 0;
    }

    setState(() {
      
    });
  }

  // Realiza la raíz cuadrada del número indicado y lo muestra directamente por pantalla
  void raizCuadrada(){
    if(numIntroducido != "") {
      //
      valor1 = double.parse(valorMostrar);
      num raiz = pow(valor1, 1/2);

      valorMostrar = raiz.toString();
      numIntroducido = "";
      valor1 = 0;
    }

    setState(() {
      
    });
  }

  // Establece o quita el símbolo menos del valor que se muestra por pantalla
  void cambiarSimbolo(){
    // Si el valor no contiene un menos, se lo ponemos al comienzo
    if(!numIntroducido.contains("-")){
      numIntroducido = "-$numIntroducido";
      valorMostrar = numIntroducido;
    } else {
      // Si le hemos dado al botón y ya contenía un menos, quiere decir que
      // queremos poner un más, por lo tanto quitamos el símbolo menos
      numIntroducido = numIntroducido.substring(1, numIntroducido.length);
      valorMostrar = numIntroducido;
    }

    setState(() {
      
    });
  }

  // Añade un punto al valor que se muestra por pantalla para que este se haga decimal
  void hacerDecimal(){
    // Si no contiene el punto y el valor de número introducido es diferente de vacío, 
    // añade el punto. Si no indicáramos la segunda condición, se podría añadir un 
    // punto aunque no hubiese ningún valor 
    if(!numIntroducido.contains(".") && numIntroducido != "") {
      numIntroducido += ".";
      valorMostrar = numIntroducido;
    }

    setState(() {
      
    });
  }

  void resultado(){
    // Cuando le demos al igual, que es el botón que tiene asociado esta función,
    // el valor1 ya tendrá valor, por lo tanto, guardamos lo que mostramos en el 
    // segundo valor
    valor2 = double.parse(valorMostrar);

    // En función del operador almacenado se realizará una u otra operación
    if(operacion == "/") {
      // Guardamos la operación a realizar
      double opDividir = valor1 / valor2;
      // La mostramos por pantalla
      valorMostrar = opDividir.toString();
      // Reseteamos los valores guardados y el número que hemos introducido, 
      // El valor que mostramos no lo reseteamos, se reseteará una vez 
      // introduzcamos un nuevo valor
      valor1 = 0;
      valor2 = 0;
      numIntroducido = "";
      // Realizamos lo mismo con las diferentes condiciones
    } else if(operacion == "*") {
      double opMultiplicar = valor1 * valor2;
      valorMostrar = opMultiplicar.toString();
      valor1 = 0;
      valor2 = 0;
      numIntroducido = "";
    } else if(operacion == "%"){
      double opPorcentaje = (valor1 * valor2) / 100;
      valorMostrar = opPorcentaje.toString();
      valor1 = 0;
      valor2 = 0;
      numIntroducido = "";
    } else if(operacion == "-"){
      double opRestar = valor1 - valor2;
      valorMostrar = opRestar.toString();
      valor1 = 0;
      valor2 = 0;
      numIntroducido = "";
    } else if(operacion == "+"){
      double opSuma = valor1 + valor2;
      valorMostrar = opSuma.toString();
      valor1 = 0;
      valor2 = 0;
      numIntroducido = "";
    }

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {

    const tamanno30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 151, 170),
      appBar: AppBar(
        title: const Text('Calculadora'),
        elevation: 10.0,
      ),
      body: Column(
        children: <Widget>[
          Text(
            valorMostrar, 
            style: tamanno30
          ),
          // Insertamos las diferentes filas que contendrán los botones de la calculadora
          // Cada fila contendrá 4 botones y cada botón tendrá asociado cuando se clique en él
          // el método asociado a la función
          //   función     método asociado 
          Row1(porcentajeFn: porcentaje, limpiarUnValorFn: limpiarUnValor, limpiarTodoFn: limpiarTodo, borrarUnNumeroFn: borrarUnNumero),
          Row2(funcionesFn: hacerFunciones, elevarA2Fn: elevar, raizCuadradaFn: raizCuadrada, dividirFn: dividir,),
          Row3(actualizarNum7Fn: actualizarNumero7, actualizarNum8Fn: actualizarNumero8, actualizarNum9Fn: actualizarNumero9, multiplicarFn: multiplicar,),
          Row4(actualizarN4Fn: actualizarNumero4, actualizarN5Fn: actualizarNumero5,  actualizarN6Fn: actualizarNumero6, restarFn: restar),
          Row5(actualizarN1Fn: actualizarNumero1, actualizarN2Fn: actualizarNumero2, actulizarN3Fn: actualizarNumero3, sumarFn: sumar),
          Row6(cambiarSimboloFn: cambiarSimbolo, actualizaN0Fn: actualizarNumero0, annadirDecimalFn: hacerDecimal, resultadoFn: resultado),
        ],
      )
    );
  }
}

class Row1 extends StatelessWidget {

  final Function porcentajeFn;
  final Function limpiarUnValorFn;
  final Function limpiarTodoFn;
  final Function borrarUnNumeroFn;

  const Row1({
    Key? key, required this.porcentajeFn, required this.limpiarUnValorFn, required this.limpiarTodoFn, required this.borrarUnNumeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Icon(Icons.percent), onPressed: () => porcentajeFn()),
        FloatingActionButton(child: const Text('CE'), onPressed: () => limpiarUnValorFn() ),
        FloatingActionButton(child: const Text('C'),onPressed: () => limpiarTodoFn()),
        FloatingActionButton(child: const Icon(Icons.delete_forever), onPressed: () => borrarUnNumeroFn(),),
      ],
    );
  }
}

class Row2 extends StatelessWidget {

  final Function funcionesFn;
  final Function elevarA2Fn;
  final Function raizCuadradaFn;
  final Function dividirFn;

  const Row2({
    Key? key, required this.funcionesFn, required this.elevarA2Fn, required this.raizCuadradaFn, required this.dividirFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Text('1/x'), onPressed: () => funcionesFn()),
        FloatingActionButton(child: const Text('x^2'), onPressed: () => elevarA2Fn()),
        FloatingActionButton(child: const Text('Raiz2'),onPressed: () => raizCuadradaFn()),
        FloatingActionButton(child: const Text('/'), onPressed: () => dividirFn()),
      ],
    );
  }
}

class Row3 extends StatelessWidget {

  final Function actualizarNum7Fn;
  final Function actualizarNum8Fn;
  final Function actualizarNum9Fn;
  final Function multiplicarFn;

  const Row3({
    Key? key, required this.actualizarNum7Fn, required this.actualizarNum8Fn, required this.actualizarNum9Fn, required this.multiplicarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Text('7'), onPressed: () => actualizarNum7Fn()),
        FloatingActionButton(child: const Text('8'), onPressed: () => actualizarNum8Fn() ),
        FloatingActionButton(child: const Text('9'),onPressed: () => actualizarNum9Fn()),
        FloatingActionButton(child: const Text('X'), onPressed: () => multiplicarFn(),),
      ],
    );
  }
}

class Row4 extends StatelessWidget {

  final Function actualizarN4Fn;
  final Function actualizarN5Fn;
  final Function actualizarN6Fn;
  final Function restarFn;

  const Row4({
    Key? key, required this.actualizarN4Fn, required this.actualizarN5Fn, required this.actualizarN6Fn, required this.restarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Text('4'), onPressed: () => actualizarN4Fn() ),
        FloatingActionButton(child: const Text('5'), onPressed: () => actualizarN5Fn() ),
        FloatingActionButton(child: const Text('6'),onPressed: () => actualizarN6Fn() ),
        FloatingActionButton(child: const Icon(Icons.remove), onPressed: () => restarFn() ),
      ],
    );
  }
}

class Row5 extends StatelessWidget {

  final Function actualizarN1Fn;
  final Function actualizarN2Fn;
  final Function actulizarN3Fn;
  final Function sumarFn;

  const Row5({
    Key? key, required this.actualizarN1Fn, required this.actualizarN2Fn, required this.actulizarN3Fn, required this.sumarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Text('1'), onPressed: () => actualizarN1Fn()),
        FloatingActionButton(child: const Text('2'), onPressed: () => actualizarN2Fn() ),
        FloatingActionButton(child: const Text('3'),onPressed: () => actulizarN3Fn() ),
        FloatingActionButton(child: const Text('+'), onPressed: () => sumarFn() ),
      ],
    );
  }
}

class Row6 extends StatelessWidget {

  final Function cambiarSimboloFn;
  final Function actualizaN0Fn;
  final Function annadirDecimalFn;
  final Function resultadoFn;

  const Row6({
    Key? key, required this.cambiarSimboloFn, required this.actualizaN0Fn, required this.annadirDecimalFn, required this.resultadoFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(child: const Text('+/-'), onPressed: () => cambiarSimboloFn()),
        FloatingActionButton(child: const Text('0'), onPressed: () => actualizaN0Fn()),
        FloatingActionButton(child: const Text(','),onPressed: () => annadirDecimalFn()),
        FloatingActionButton(child: const Text('='), onPressed: () => resultadoFn()),
      ],
    );
  }
}