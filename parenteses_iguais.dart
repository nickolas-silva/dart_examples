class Pilha {
  List<dynamic> _pilha = [];

  void push(dynamic elemento) {
    _pilha.add(elemento);
  }

  void pop() {
    _pilha.removeLast();
  }

  int size() {
    return _pilha.length;
  }

  void show() {
    print(_pilha);
  }
}



void main(){
  String str = ')(a)(';
  
  print('Saida: ${_check(str)}');
  
}

bool _check(String str){
  Pilha minha = Pilha();
  int qnt_esq = 0;
  int qnt_dir = 0;
  

  for(int i = 0; i<str.length; i++){
    if(str[i] == '('){
      minha.push(str[i]);
      qnt_esq++;
    }
    else if(str[i] == ')'){
      minha.push(str[i]);
      qnt_dir++;
    }

  }
  int aux = 0;
  if(qnt_dir == qnt_esq){
    // print(qnt_dir);
    // minha.show();
    for(int x = 0; x<qnt_dir*2; x+=2){
      if(minha._pilha[x] == '(' && minha._pilha[x+1] == ')'){
        aux++;

      }
    }
    if(aux == qnt_dir){
      return true;
    }
    else{
      return false;
    }
    
  }
  else{
    return false;
  }
}