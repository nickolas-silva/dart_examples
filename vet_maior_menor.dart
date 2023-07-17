void main(){
  List<int> vetor = [20, 5, 78, 90, 12, 21];
  print('Vetor original: $vetor');
  print('Maior elemento: ${maior(vetor)}');
  print('Menor elemento: ${menor(vetor)}');
}

int maior(List<int> vetor){
  int maior = vetor[0];
  for(int i = 1; i < vetor.length; i++){
    if(vetor[i] > maior){
      maior = vetor[i];
    }
  }
  return maior;
}

int menor(List<int> vetor){
  int menor = vetor[0];
  for(int i = 1; i < vetor.length; i++){
    if(vetor[i] < menor){
      menor = vetor[i];
    }
  }
  return menor;
}