import 'dart:io';

void main(){
  print('Entre com um número: ');
  int numero = int.parse(stdin.readLineSync()!);
  int cont = 0;

  for(int i = 1; i <= numero; i++){
    if(numero % i == 0){
      cont++;

    }
  }
  if(cont == 2){
    print('$numero é primo');
  } else{
    print('$numero não é primo');
  }

}