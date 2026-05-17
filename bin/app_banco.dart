import 'package:app_notas/conta.dart';

void main () {
  Conta contaJoao = Conta("João", 1000);
  Conta contaMaria = Conta("Maria", 2000);
  ContaPoupanca contaCris = ContaPoupanca("Cris", 3500);
  ContaCorrente contaDenise = ContaCorrente("Denise", 3000);


  List<Conta> contas = [contaJoao, contaMaria, contaCris, contaDenise];
  for (var conta in contas) { //usando o var ja deixa explicito que o tipo da variavel é Conta
    conta.imprimeSaldo();
  }
  // contaMaria.receber(500);
  // contaJoao.pagar(200);
  // contaCris.aplicarJuros();
  contaDenise.pagar(3900);
}