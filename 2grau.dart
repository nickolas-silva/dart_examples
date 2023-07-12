import 'dart:io';
import 'dart:math';

void main(){
  print('Entre com 3 valores');
  double? a = double.parse(stdin.readLineSync()!);
  double? b = double.parse(stdin.readLineSync()!);
  double? c = double.parse(stdin.readLineSync()!);

  double delta = delt(a, b, c);
  
  if(delta < 0){
    print('Não existe raiz real');
    return;
  }else if(delta == 0){
    print('Existe apenas uma raiz real');
    raiz(a, b, delta);
  }
  else{
    print('Existem duas raizes reais');
    raiz(a, b, delta);
  }
}

double delt(double a, double b, double c){
  double result = (b * b) - (4 * a * c);
  return result;
}

void raiz(double a, double b, double delta){
  
  delta = sqrt(delta);
  double x1 = ((b * -1) + delta) / (2 * a);
  double x2 = ((b * -1) - delta) / (2 * a);

  print('x1 = ${x1.toStringAsFixed(2)}');
  print('x2 = ${x2.toStringAsFixed(2)}');
}