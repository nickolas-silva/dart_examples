import 'dart:io';
import 'dart:math';

void main(){
  print("Digite sua altura: ");
  double? altura = double.parse(stdin.readLineSync()!);
  if(altura == 0){
    print("Altura inválida");
    return;
  }
  print("Digite seu peso: ");
  double? peso = double.parse(stdin.readLineSync()!);
  double imc = peso / pow(altura, 2);
  print("Seu IMC é: " + imc.toStringAsFixed(2));
  
}