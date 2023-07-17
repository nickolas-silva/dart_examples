import 'dart:io';

void main(){
  print('Entre com dois numeros inteiros');
  int numero1 = int.parse(stdin.readLineSync()!);
  int numero2 = int.parse(stdin.readLineSync()!);

  if (numero1 > numero2) {
    int aux = numero2;
    numero2 = numero1;
    numero1 = aux;
  } else if (numero1 == numero2) {
    print('O somatorio é igual a: $numero1');
    return;
  }

  print('O resultado do somatório é: ${somatorio(numero1, numero2)}');

}

int somatorio(int n1, int n2){
  if(n1 == n2){
    return n1;
  }else{
    return n1 + somatorio(n1 + 1, n2);
  }
}