import 'dart:io';

void main(){
  print('Entre com um número: ');
  int numero = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <=9; i++){
    print('${numero} x ${i} = ${numero * i}');
    
  }
}