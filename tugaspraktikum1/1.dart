void main(List<String> args) {

  String Strings = "Ini Adalah String"; 
  print(Strings);
  
  int Integers = 6;
  print(Integers);

  num Numbers = 67.5;
  print(Numbers);

  double Doubles = 5.45;
  print(Doubles);

  dynamic Dynamics = 55;
  Dynamics = "Lima Puluh Lima";
  print(Dynamics);

  bool Booleans = false;
  print(!Booleans);

  const nama = 'Ilhan';
  final Runes = nama.runes.toList();
  print(Runes);

  Symbol Symbols=new Symbol("Ini Simbol");
  print(Symbols);
  print(#Ilhan);

  String? Null; //
  print("$Null");

}