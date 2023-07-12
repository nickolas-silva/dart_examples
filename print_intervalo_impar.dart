import 'dart:io';

void main(){
  print('Digite dois números inteiros:');
  
  int numero1 = int.parse(stdin.readLineSync()!);
  int numero2 = int.parse(stdin.readLineSync()!);

  print('Números no intervalo:');
  if(numero1 % 2 == 0){
    numero1 ++;
    // while(numero1 <= numero2){
    //   stdout.write('$numero1 ');
    //   numero1 += 2;
    // }
    // do{
    //   stdout.write('$numero1 ');
    //   numero1 += 2;
    // }while(numero1 <= numero2);
    for(int i = numero1; i <= numero2; i+=2){
      stdout.write('$i ');
    }
    
    
  }
  else{
    // while(numero1 <= numero2){
    //   stdout.write('$numero1 ');
    //   numero1 += 2;
    // }
    // do{
    //   stdout.write('$numero1 ');
    //   numero1 += 2;
    // }while(numero1 <= numero2);
    for(int i = numero1; i <= numero2; i+=2){
      stdout.write('$i ');
    }
    
  }
}