import 'dart:io';
import 'dart:math';

void main(){
  print('Digite o valor do raio:');
  double? raio = double.parse(stdin.readLineSync()!);
  if (raio <= 0) {
    print('Valor inválido');
    return;
  }


  double area = pi * pow(raio, 2);
  print('A área do círculo é: ' + area.toStringAsFixed(2));
}