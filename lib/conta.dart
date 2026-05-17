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

class ContaPoupanca extends Conta { // classe filha que herda da classe Conta
  double taxaJuros = 0.05; // atributo específico da classe ContaPoupanca

  ContaPoupanca(String titular, double saldo) : super(titular, saldo); // construtor da classe ContaPoupanca que chama o construtor da classe Conta

void aplicarJuros (){
  double juros = _saldo * taxaJuros; // calcula os juros
  _saldo += juros; // adiciona os juros ao saldo da conta
  print("Juros de R\$ $juros aplicados na conta de $titular");
  imprimeSaldo(); // chama o método para imprimir o saldo atualizado da conta
}
}

class ContaCorrente extends Conta { // classe filha que herda da classe Conta
  double emprestimo = 300;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void pagar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      print("Pagamento de R\$ $valor realizado com sucesso na conta de $titular!");
      imprimeSaldo();
    } else {
      print("Saldo insuficiente para pagar R\$ $valor, mesmo com o empréstimo disponível (R\$ $emprestimo).");
    }
  }
}