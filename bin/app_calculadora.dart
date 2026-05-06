import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = ["+", "-", "*", "/"]; // Lista de operações válidas

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "*":
        multiplicacao();

      case "/":
        divisao();
    }
  }

  void getOperacao() {
    while (true) {
    print("\nDigite a operação desejada ${operacoes.toString()}: "); // Demonstra as operações disponíveis
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
        break;
      } else {
      print("Operação inválida. Tente novamente.");
      }
    }
  }
  }

  print("Digite o primeiro número: ");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("\nDigite o segundo número: ");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("\nResultado: ");
  calcular();
}
