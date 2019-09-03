import 'package:Test/Test.dart' as Test;
import 'package:test/test.dart';
import 'dart:io';

main(List<String> arguments) {
 /* print('Hello world: ${Test.calculate()}!');
  stdout.write("Introduce un numero: ");
  var num=int.parse(stdin.readLineSync());
  SumaCapi(num);*/
  var matriz=Crear_matriz();
  VerMatriz(matriz);
  matriz=Anadir_matriz(matriz);
  VerMatriz(matriz);
  //print(matriz);
}
int Potencia(int base, int expo) {
  if(expo < 1) {
    return 1;
  } else {
    return base * Potencia(base, expo - 1);
  }
}

int CuentaDigit(int n) {
  var aux=0;
  while(n>9) {
    n = n ~/ 10;
    aux += 1;
  }
  return aux;
}

int InvertirNum(int number) {
  var n1 = 0;
  while (number > 0) {
    if(number <= 9) {
      n1 += number % 10;
      number = number ~/ 10;
    }
      n1 += (number % 10) * Potencia(10, CuentaDigit(number));
      number = number ~/ 10;
    }
  return n1;
}

SumaCapi(int n1) {
  while(n1 != InvertirNum(n1)) {
    print("$n1 + ${InvertirNum(n1)} = ${n1 + InvertirNum(n1)}");
    n1 += InvertirNum(n1);
  }
  print("El numero capicua es : $n1");
}

List<List<int>> Anadir_matriz(List<List<int>> matriz) {
  var Fila, Columna;

  stdout.write("Introduce el indice de la fila: ");
  Fila=int.parse(stdin.readLineSync());

  stdout.write("Introduce el indice de la columna: ");
  Columna=int.parse(stdin.readLineSync());


  if(Fila > matriz.length) {
    matriz.length = Fila;
    for(var z = 0;z <= Fila-1; z++ ) {
      if (matriz[z] == null) {
        matriz[z] = Crear_lista(Columna - 1);
      }
    }
  }

  for(var i = 0; i <= Fila - 1; i++) {
    if (Columna > matriz[i].length) {
      matriz[i].length = Columna;
    }
  }

  for(var j = 0; j <= Fila - 1; j++) {
    for (var k = 0; k <= Columna - 1; k++) {
      if ((j == Fila - 1) && (k == Columna - 1)) {
        matriz[j][k] = 1;
      } else {
        if (matriz[j][k] == null) {
          matriz[j][k] = 0;
        }
      }
    }
  }
  return matriz;
}

List<int> Crear_lista(int n) {
  List<int> lista=[];
  for(var i = 0; i <= n; i++) {
    lista.add(0);
  }
  return lista;
}


VerMatriz(var matriz) {
  for(var i = 0; i <= matriz.length - 1; i++) {
    for(var j = 0; j <= matriz[i].length - 1; j++) {
      stdout.write(" ${matriz[i][j]}");
    }
    print("");
  }
}

List<List<int>>Crear_matriz() {
  var Fila, Columna;

  stdout.write("Introduce el indice de la fila: ");
  Fila=int.parse(stdin.readLineSync());

  stdout.write("Introduce el indice de la columna: ");
  Columna=int.parse(stdin.readLineSync());

  List<List<int>> matriz =[];

  for(var i = 0; i <= Fila - 1; i++ ) {
    List<int> list = [];

    for(var j = 0; j <= Columna - 1; j++) {
      if ((i == Fila-1) && (j == Columna-1)) {
        list.add(1);
      } else {
        list.add(0);
      }
    }
    matriz.add(list);
  }
  return matriz;
}


