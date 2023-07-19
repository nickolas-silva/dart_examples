class Pilha{
  List<dynamic> _pilha = [];


  void push(dynamic elemento){
    _pilha.add(elemento);
  }
  void pop(){
    _pilha.removeLast();
  }
  int size(){
    return _pilha.length;
  }
  void show(){
    print(_pilha);
  }
}


void main(){
  Pilha p = Pilha();

  p.push(1);
  p.push(2);
  p.push(3);
  p.push(4);
  p.push(5);
  p.show();
  print(p.size());

  p.pop();
  p.pop();
  p.pop();

  print(p.size());
}