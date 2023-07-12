import 'dart:io';

void main(){
  print('Digite dois números inteiros:');
  int numero1 = int.parse(stdin.readLineSync()!);
  int numero2 = int.parse(stdin.readLineSync()!);


  print('Números no intervalo:');
  // while(numero1 <= numero2){
  //   stdout.write('$numero1 ');
  //   numero1++;
  // }
  do{
    stdout.write('$numero1 ');
    numero1++;
  } while(numero1 <= numero2);

  // for(int i = numero1; i <= numero2; i++){
  //   stdout.write('$i ');
  // }
}