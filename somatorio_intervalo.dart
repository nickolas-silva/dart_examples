import 'dart:io';

void main(){
  print('Entre com os dois números do intervalo: ');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  if(num1 > num2){
    int aux = num2;
    num2 = num1;
    num1 = aux;
  } else if(num1 == num2){
    print('O somatorio é igual a: $num1');
    return;
  } 
  int result = 0;
  for(int i = num1; i <= num2; i++){
    result += i;

  }
  print('O somatório é igual a: $result');
}