void main() {
  reservaCliente cliente1 = reservaCliente("Luiz", []);
  cliente1.fazerReserva("Quarto 101");
  cliente1.fazerReserva("Quarto 202");
  cliente1.mostrarReservas();
  cliente1.cancelarReserva("Quarto 101");
  cliente1.mostrarReservas();
}

class reservaCliente {
  String nome;
  List <String> _reservas = [];
  reservaCliente(this.nome, this._reservas);

  void fazerReserva (String quarto) {
    _reservas.add(quarto);
    print("Reserva do $quarto feita para o cliente $nome");
  }

  void mostrarReservas () {
    print ("Reservas do cliente $nome: ${_reservas.join(", ")}");
  }

  void cancelarReserva (String quarto) {
    if (_reservas.contains(quarto)) {
      _reservas.remove(quarto);
      print("Reserva do $quarto cancelada para o cliente $nome");
    } else {
      print("O cliente $nome não tem uma reserva para o quarto $quarto");
    }
  }
}