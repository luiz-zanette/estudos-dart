class Conta { // nome da classe
  String titular; // atributos da classe
  double _saldo; // atributos da classe com underscore para indicar que é privado

  Conta(this.titular, this._saldo); // construtor da classe, metodo this para referenciar os atributos da classe

void receber (double valor) {
  _saldo += valor; // adiciona o valor ao saldo da conta
  print("Valor de R\$ $valor recebido na conta de $titular"); // imprime o valor recebido e o titular da conta
  imprimeSaldo(); // chama o método para imprimir o saldo atualizado da conta
}

void pagar (double valor) {
  if (_saldo < valor) { // verifica se o saldo da conta é suficiente para pagar o valor
    print("Saldo insuficiente para pagar R\$ $valor"); // imprime uma mensagem de erro
  } else {
    _saldo -= valor; // subtrai o valor do saldo da conta
    print("Valor de R\$ $valor pago na conta de $titular"); // imprime o valor pago e o titular da conta
    imprimeSaldo(); // chama o método para imprimir o saldo atualizado da conta
  }
}

void imprimeSaldo () {
  print("Saldo da conta de $titular: R\$ $_saldo"); // imprime o saldo da conta
}
}