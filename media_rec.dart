import 'dart:io';

void main(){
  print('Entre com as 3 notas do aluno:');
  double? nota1 = double.parse(stdin.readLineSync()!);
  double? nota2 = double.parse(stdin.readLineSync()!);
  double? nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3) / 3;

  if (media >= 7) {
    print('O aluno está Aprovado');
  } else if (media < 7 && media >= 3.5) {
    print('O aluno está de RECUPERAÇÃO \nDigite a nota da prova de recuperação:');
    
    double nf = ((media * 6)-50);
    nf = nf * -1;
    nf = nf / 4;

    print('O aluno precisa tirar ' + nf.toStringAsFixed(1) + ' na prova de recuperação para ser aprovado');


  } else {
    print('O aluno foi Reprovado');
  }
  
}