import 'dart:io';

void main() {
  atualizarInventario();
}

void atualizarInventario() {
  Map<String, double> inventarioProdutos = { 
    "Camiseta": 30.0, 
    "Calça": 50.0, 
    "Boné": 15.0 
  };

  print("Digite o nome do produto a ser atualizado: ");
  String? nomeProduto = stdin.readLineSync();

  if (nomeProduto != null && inventarioProdutos.containsKey(nomeProduto)) {
    print("Digite o novo preço do produto: ");
    String? precoEntrada = stdin.readLineSync();
    if (precoEntrada != null) {
      double? novoPreco = double.tryParse(precoEntrada);
      if (novoPreco != null) {
        inventarioProdutos[nomeProduto] = novoPreco;
        print("Preço do produto $nomeProduto atualizado para $novoPreco");
      } else {
        print("Preço inválido. Atualização cancelada.");
      }
    }
  } else {
    print("Produto não encontrado no inventário.");
  }
}
