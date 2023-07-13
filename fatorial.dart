import 'dart:io';

void main(){
 print('Entre com um numero inteiro: ');
 int numero = int.parse(stdin.readLineSync()!);
 int result = 1;

 for(int i = 1; i<=numero; i++){
  result *= i;
 }
 print('O fatorial de $numero é igual a: $result');
}