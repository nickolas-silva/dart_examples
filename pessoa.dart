import 'dart:io';

class Pessoa{
  String? nome;
  double? peso;
  double? altura;
  double? imc;

}

void main(){
  List<Pessoa> pessoas = [];

  print('Quantas pessoas deseja cadastrar?');
  int qtd = int.parse( stdin.readLineSync()! );

  for(int i=0; i<qtd; i++){
    Pessoa p = Pessoa();

    print('Digite o nome da pessoa ${i+1}:');
    p.nome = stdin.readLineSync();

    print('Digite o peso da pessoa ${i+1}:');
    p.peso = double.parse( stdin.readLineSync()! );

    print('Digite a altura da pessoa ${i+1}:');
    p.altura = double.parse( stdin.readLineSync()! );

    p.imc = p.peso! / (p.altura! * p.altura!);

    pessoas.add(p);
  }
  
  print('\n Pessoas cadastradas:');
  for(int n=0; n<pessoas.length; n++){
    print('Nome: ${pessoas[n].nome} - IMC: ${pessoas[n].imc} - Altura: ${pessoas[n].altura} - Peso: ${pessoas[n].peso}');
  }
}