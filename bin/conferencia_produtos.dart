import "dart:io";

void main() {
  verificarProdutos();
}

List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

List<String> produtosCarrinho = ["arroz", "feijão", "macarrão", "leite"]; 

void verificarProdutos() {
  for (String produto in produtosVisitados) {
    if (produtosCarrinho.contains(produto)) {
      print("O produto $produto está no carrinho.");
    } else {
      print("O produto $produto não está no carrinho.");
    }
  }
}