import 'dart:io';

class Pessoa {
  String? nome;
  double? peso;
  double? altura;
  double? imc;
}

Future<void> main() async {
  List<Pessoa> pessoas = [];
  String path = './pessoas.bin';

  print('Quantas pessoas deseja cadastrar?');
  int qtd = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < qtd; i++) {
    Pessoa p = Pessoa();

    print('Digite o nome da pessoa ${i + 1}:');
    p.nome = stdin.readLineSync();

    print('Digite o peso da pessoa ${i + 1}:');
    p.peso = double.parse(stdin.readLineSync()!);

    print('Digite a altura da pessoa ${i + 1}:');
    p.altura = double.parse(stdin.readLineSync()!);

    p.imc = p.peso! / (p.altura! * p.altura!);

    pessoas.add(p);
  }

  print('\n Pessoas cadastradas:');
  
  //List<String> teste1 = ['ola', 'teste'];
  writeFileBinary(path, pessoas);
  List<String> teste = [];
  teste = await readFileBinary(path);
  print(teste);

}


Future<List<String>> readFileBinary(String filePath) async {
  File file = File(filePath);
  List<String> linhas = await file.readAsLines();
  return linhas;
  
}

Future<void> writeFileBinary(String filePath, List<Pessoa> bytes) async {
  File file = File(filePath);
  await file.writeAsString(bytes.join('\n'));
}
