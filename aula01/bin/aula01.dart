import 'dart:ffi';
import 'dart:io';
void main() {
  // questões separadas pelos comentarios!, classes e funções no final do arquivo!
  //questao 1
  print('Hello, Dart!');
  //questao 2
  /*
  int in1 = 1;
  double do1 = 2;
  String str = "string";
  bool bo1 = true;
  print(in1);
  print(do1);
  print(str);
  print(bo1);*/
  //questao 3
  /*
  int n1; int n2;
  print('Numero 1');
  n1 = int.parse( stdin.readLineSync()!  );
  print('Numero 2');
  n2 = int.parse( stdin.readLineSync()!  );
  print(n1+n2);
  print(n1-n2);
  print(n1*n2);
  print(n1/n2);*/
  //questao 4
  /*
  int i1 = 3;
  double d1;
  d1 = i1.toDouble();
  print(d1);
  d1 = 8;
  i1 = d1.toInt();
  print(i1);*/
  //questao 5
  /*
  int in2;
  print('Digite um número:');
  in2 = int.parse( stdin.readLineSync()!  );
  if(in2%2==0){
    print('O número $in2 é par!');
  }else{
    print('O número $in2 é impar!');
  }*/
  //questao 6
  /*
  switch (DateTime.now().weekday){
    case 1:
      print('segunda');
      break;
    case 2:
      print('terça');
      break;
    case 3:
      print('quarta');
      break;
    case 4:
      print('quinta');
      break;
    case 5:
      print('sexta');
      break;
    case 6:
      print('sabado');
      break;
    case 7:
      print('domingo');
      break;
  }*/
  //questao 7
  /*
  for(int i=1;i<=10;i++){
    print(i);
  }*/
  //questao 8
  /*
  int n = 1,soma = 0;
  while(n<=100){
    soma = soma + n;
    n++;
  }
  print(soma);*/
  //questao 9
  /*
  List<String> lista = <String>['uva', 'banana', 'manga'];
  for(int i1 = 0;i1<=2;i1++){
    print(lista[i1]);
  }*/
  //questao 10
  /*
  final Map<String, int> mapa = {
    "Marcos": 18,
    "Jonas": 20,
  };
  print(mapa);*/
  //questao 11
  /*
  somar(1, 2);*/
  //questao 12
  /*
  saudar();*/
  //questao 13
  /*
  print(fatorar(5));*/
  //questao 14
  /*
  List<int> listaNum = [1,5,11,4,9];
  listaNum.sort();
  print(listaNum);*/
  //questao 15
  /*
  List<int> listaNum = [1,5,11,4,9,6];
  listaNum.sort();
  print(listaNum.where((x) => x.isEven));
  //questao 16
  dividirZero(1,0);*/
  //questao 17 e 18
  /*
  Carro c = Carro('hds', 'xyz', '12/02/2928');
  c.mostrarDados();*/
  //questao 19
  /*
  Gato g = Gato();
  g.emitirSom();
  Cachorro ca = Cachorro();
  ca.emitirSom();*/
  //questao 20
} 
void somar(int n1, int n2){
    print(n1 + n2); 
}
void saudar(){
  print('Digite seu nome:');
  String s = stdin.readLineSync()!;
  print('Seja bem vindo $s!');
}
int fatorar(int n){
  if(n>1){
    n = n*fatorar(n-1);
  }else{
    return n;
  }
  return n;
}
void dividirZero(int n1, int n2){
    try {
      print(n1~/n2);
    } catch(e) {
      print('Impossivel dividir por zero!');
    }
}
class Carro{
  String? _marca, _modelo, _data;
  get marca => _marca;
  set marca(value) {
    _marca = value;
  }
  get modelo => _modelo;
  set modelo(value) {
    _modelo = value;
  }
  get data => _data;
  set data(value) {
    _data = value;
  }
  Carro(String marca,modelo,data){
    this._marca = marca;
    this._modelo = modelo;
    this._data = data;
  }
  void mostrarDados(){
    print('Marca: $_marca');
    print('Modelo: $_modelo');
    print('Data: $_data');
  }
}
class Animal{
  void emitirSom(){
  }
}
class Cachorro extends Animal{
  @override
  void emitirSom(){
    print('Au au!');
  }
}
class Gato extends Animal{
  @override
  void emitirSom(){
    print('Miau miau!');
  }
}