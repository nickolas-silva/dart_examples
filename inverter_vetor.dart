void main(){
  List<int> vetor = [1, 2, 3, 4, 5];
  print('Vetor original: $vetor');
  print('Vetor invertido: ${invert(vetor)}');
}

List<int> invert(List<int> vetor){
  List<int> invertido = [];
  for(int i = vetor.length - 1; i >= 0; i--){
    invertido.add(vetor[i]);
  }
  return invertido;
}