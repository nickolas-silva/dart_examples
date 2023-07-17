void main(){
  int numero = 2;

  print(fatorial(numero));
}

int fatorial(int numero){
  if(numero == 1){
    return 1;
  }else{
    return numero * fatorial(numero - 1);
  }
}