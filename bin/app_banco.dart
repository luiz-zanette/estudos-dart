import 'package:app_notas/conta.dart';

void main () {
  Conta contaJoao = Conta("João", 1000);
  Conta contaMaria = Conta("Maria", 2000);

  List<Conta> contas = [contaJoao, contaMaria];
  for (var conta in contas) { //usando o var ja deixa explicito que o tipo da variavel é Conta
    conta.imprimeSaldo();
  }
  contaMaria.receber(500);
  contaJoao.pagar(200);
}