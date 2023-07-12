import 'dart:io';

void main(){
  print('Digite um número inteiro:');
  
  int? numero = int.parse(stdin.readLineSync()!);
  if(numero < 1 && numero > 5){
    print('Número inválido');
  } else if(numero == 1){
    print('Um');
  } else if(numero == 2){
    print('Dois');
  } else if(numero == 3){
    print('Três');
  } else if(numero == 4){
    print('Quatro');
  } else if(numero == 5){
    print('Cinco');
  } else {
    print('Número inválido');
  }
}