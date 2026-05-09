import 'dart:io';

void main() {
  clientesFieis();
}

void clientesFieis() {
List<Map<String, dynamic>> clientes = [ 
  {"nome": "João", "pontuacao": 6.5}, 
  {"nome": "Maria", "pontuacao": 8.7}, 
  {"nome": "Pedro", "pontuacao": 9.2}, 
  {"nome": "Ana", "pontuacao": 5.4} 
]; 
for (var cliente in clientes) {
  if (cliente["pontuacao"] >= 7.0) {
    print("O cliente ${cliente["nome"]} é um cliente fiel.");
  } else {
    print("O cliente ${cliente["nome"]} não é um cliente fiel.");
  }
}
}