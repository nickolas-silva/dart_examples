
void main(){
  String frase = 'estude muito sempre sempre estude estude muito certo';

  List<String> palavras = frase.split(' ');
  List<String> palavrasSemRepeticao = [];
  List<int> contador = [];

  for(int i = 0; i < palavras.length; i++){
    if(!palavrasSemRepeticao.contains(palavras[i])){
      palavrasSemRepeticao.add(palavras[i]);
      contador.add(1);
    }
    else{
      int indice = palavrasSemRepeticao.indexOf(palavras[i]);
      contador[indice]++;
    }
    
    
  }
  for(int n = 0; n < palavrasSemRepeticao.length; n++){
    print('${palavrasSemRepeticao[n]}: ${contador[n]}');
  }
}