import 'dart:io';
import 'dart:math';

void main(){
  int opcao = 0;

  do{
    double? result = 0;
    print('Entre com o número: ');
    double numero = double.parse(stdin.readLineSync()!);
    
    print('\n1-Potenciacao \n2-Raiz \n3-Fatorial \n0-Sair');
    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1: 
      result = pow(numero, 2) as double?;
      print('Resultado da potenciacao: $result');
      break;

      case 2:
      result = sqrt(numero);
      print('Resultado da raiz quadrada: $result');
      break;

      case 3:
      result = fat(numero);
      print('O resultado do fatorial: $result');
      break;

      case 0:
      break;

      default:
      break;



    }
    //print(Process.runSync("clear",[], runInShell: true).stdout);

  }while(opcao != 0);
}

double fat(double numero){
  double result = numero;
  for(int i = 1; i < numero; i++){
    result *= i;

  }
  return result;
}