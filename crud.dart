import 'dart:io';

void main(){
  List<dynamic> lista = [];
  int opcao;
  print('O que deseja fazer? ');
  print('1 - Adicionar');
  print('2 - Remover');
  print('3 - Mostrar');
  print('4 - Editar');
  print('5 - Sair');
  opcao = int.parse(stdin.readLineSync()!);

  while(opcao != 5){
    if(opcao == 1){
      print('Digite o elemento que deseja adicionar: ');
      lista.add(stdin.readLineSync());
    }
    else if(opcao == 2){
      print('Digite o elemento que deseja remover: ');
      lista.remove(stdin.readLineSync());
    }
    else if(opcao == 3){
      print(lista);
    }
    else if(opcao == 4){
      print('Digite o elemento que deseja editar: ');
      String? elemento = stdin.readLineSync();
      print('Digite o novo elemento: ');
      String? novo = stdin.readLineSync();
      lista[lista.indexOf(elemento)] = novo;
    }
    else{
      print('Opção inválida');
    }
    print('O que deseja fazer? ');
    print('1 - Adicionar');
    print('2 - Remover');
    print('3 - Mostrar');
    print('4 - Editar');
    print('5 - Sair');
    opcao = int.parse(stdin.readLineSync()!);
  }
}