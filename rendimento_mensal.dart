import 'dart:io';

void main(){
  print('Entre com o investimento inicial: ');
  double investimento = double.parse(stdin.readLineSync()!);
  print('Valor mensal? ');
  double valor_mensal = double.parse(stdin.readLineSync()!);
  print('Quantidade de meses: ');
  int meses = int.parse(stdin.readLineSync()!);
  print('Taxa de juros: ');
  double juros = double.parse(stdin.readLineSync()!);

  double saldo = investimento;
  for(int i = 1; i<= meses; i++){
    saldo += valor_mensal;
    double rm = saldo * juros;
    saldo = saldo + rm;

    print('O saldo do mes foi de: ${saldo.toStringAsFixed(2)}');
    print('O rendimento mensal foi de: ${rm.toStringAsFixed(2)}');
    print('');
  }
  

}