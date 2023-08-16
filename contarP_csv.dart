import 'dart:io';

Future<void> main() async {
  String frase = 'estude muito sempre sempre estude estude muito certo';
  String path = './palavras.csv';
  List<String> palavras = frase.split(' ');
  List<String> palavrasSemRepeticao = [];
  List<int> contador = [];

  for (int i = 0; i < palavras.length; i++) {
    if (!palavrasSemRepeticao.contains(palavras[i])) {
      palavrasSemRepeticao.add(palavras[i]);
      contador.add(1);
    } else {
      int indice = palavrasSemRepeticao.indexOf(palavras[i]);
      contador[indice]++;
    }
  }
  List<String> output = [];
  for (int n = 0; n < palavrasSemRepeticao.length; n++) {
    output.add('${palavrasSemRepeticao[n]}: ${contador[n]}');
  }


  writeFile(path, output);
  List<String> teste = [];
  teste = await readFile(path);
  print(teste);
}

Future<List<String>> readFile(String filePath) async {
  File file = File(filePath);
  List<String> linhas = await file.readAsLines();
  return linhas;
}

Future<void> writeFile(String filePath, List<String> bytes) async {
  File file = File(filePath);
  await file.writeAsString(bytes.join('\n'));
}


