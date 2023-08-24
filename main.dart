import 'dart:io';

void main() {
  print("Calculadora de IMC\n");

  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite seu peso (em kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Digite sua altura (em metros): ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = calcularIMC(peso, altura);
  String classificacao = classificarIMC(imc);

  print("\nNome: $nome");
  print("Peso: $peso kg");
  print("Altura: $altura m\n");
  print("Seu IMC é: $imc");
  print("Classificação: $classificacao");
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificarIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc < 17) {
    return "Magreza moderada";
  } else if (imc < 18.5) {
    return "Magreza leve";
  } else if (imc < 25) {
    return "Saudável";
  } else if (imc < 30) {
    return "Sobrepeso";
  } else if (imc < 35) {
    return "Obesidade Grau I";
  } else if (imc < 40) {
    return "Obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}
