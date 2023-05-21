import "dart:io";

//Verifica se a fruta está madura
void main() {
  //Nome da Fruta
  print("Qual o nome da fruta?");
  String? inputNomeFruta = stdin.readLineSync();
  String nome = inputNomeFruta.toString();

  //Peso da Fruta
  print("Qual o peso em grama?");
  String? inputPesoFruta = stdin.readLineSync();
  double peso = double.parse(inputPesoFruta!);

  //Quantos dias fazem da sua coleita?
  print("A quantos dias a $nome foi colhida?");
  String? inputDiasColeita = stdin.readLineSync();
  int diasDaColheita = int.parse(inputDiasColeita!);

  funcEstadoDaFruta(nomeFruta: nome, pesoFruta: peso, dias: diasDaColheita);
}

funcEstadoDaFruta(
    {required String nomeFruta, double? pesoFruta, required int dias}) {
  int precisaParaMadura = 20;
  if (dias >= precisaParaMadura) {
    print(
        "A $nomeFruta pesa cerca de $pesoFruta Kg e foi colhida a $dias dias,\n"
        "para amadurecer ela precisa de $precisaParaMadura , logo, a $nomeFruta já está madura.");
  } else {
    int faltamParaAmadurecer = precisaParaMadura - dias;
    print("A $nomeFruta pesa $pesoFruta Kg e foi colhida à $dias dias,\n"
        "para amadurecer são necessários $precisaParaMadura dias, ainda faltam $faltamParaAmadurecer dias para amadurecer.");
  }
}
