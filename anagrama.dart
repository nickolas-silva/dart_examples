void main(){
  String s1 = 'amor';
  String s2 = 'roma';
  print(anagrama(s1, s2));
}

bool anagrama(String s1, String s2){
  List<String> letras1 = s1.split('');
  List<String> letras2 = s2.split('');
  
  letras1.sort();
  letras2.sort();

  return letras1.join() == letras2.join();
}