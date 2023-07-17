void main(){
  String palavra = 'casa';
  List<String> letras = palavra.split('');
  List<String> letrasSemRepeticao = [];
  List<int> contador = [];

  for(int i = 0; i < letras.length; i++){
    if(!letrasSemRepeticao.contains(letras[i])){
      letrasSemRepeticao.add(letras[i]);
      contador.add(1);
    }
    else{
      int indice = letrasSemRepeticao.indexOf(letras[i]);
      contador[indice]++;
    }
  }
  for(int n = 0; n < letrasSemRepeticao.length; n++){
    print('${letrasSemRepeticao[n]}: ${contador[n]}');
  }
  
}