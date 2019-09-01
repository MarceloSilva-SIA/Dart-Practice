import 'package:Test/Test.dart' as Test;
import 'package:test/test.dart';

main(List<String> arguments) {
 // print('Hello world: ${Test.calculate()}!');
  SumaCapi(79);

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
