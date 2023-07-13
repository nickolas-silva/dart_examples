import 'dart:io';

void main(){
  print('Entre com uma frase: ');
  String frase = stdin.readLineSync()!;
  for(int i = frase.length - 1; i >= 0; i--){
    stdout.write(frase[i]);
  }
}