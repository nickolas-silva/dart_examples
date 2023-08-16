import 'dart:io';

void main(){
  List<List<int>> matriz = [];
  print('Entre com o número de linhas: ');
  int linhas = int.parse(stdin.readLineSync()!);
  print('Entre com o número de colunas: ');
  int colunas = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < linhas; i++){
    matriz.add([]);
    for(int j = 0; j < colunas; j++){
      print('Entre com o elemento da linha ${i + 1} e coluna ${j + 1}: ');
      matriz[i].add(int.parse(stdin.readLineSync()!));
    }
  }

 
  print('IMPRIMINDO A MATRIZ:');
  imprimirMatriz(matriz);
  
}

imprimirMatriz(List<List<int>> m) {
  for (int l = 0; l < m.length; l++) {
    for (int c = 0; c < m[l].length; c++) {
      stdout.write("${m[l][c]} ");
    }
    print("");
  }
  print("");
}
