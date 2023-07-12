import 'dart:io';

void main(){
  //usando while
  // print('Digite uma senha:');
  // String senha = stdin.readLineSync()!;
  // while(senha != '1234'){
  //   print('Senha incorreta, tente novamente:');
  //   senha = stdin.readLineSync()!;
  // }
  // print('Acesso permitido');

  //usando do while
  String senha2;
  do{
    print('Digite uma senha:');
    senha2 = stdin.readLineSync()!;
  } while(senha2 != '1234');
  print('Acesso permitido');  
}