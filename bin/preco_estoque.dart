void main () {
  List<itemEstoque> estoque = [];

  estoque.add(itemEstoque("Smartphone", 100, 1500));
  estoque.add(itemEstoque("Notebook", 50, 2000));

  print("\nESTOQUE INICIAL:");
  for (var item in estoque) {
    
    print("Produto: ${item.nome}, Quantidade em estoque: ${item.quantidade}, Preço: R\$ ${item.preco}");
  }

  print("\nATUALIZAÇÃO DO ESTOQUE:");
  estoque[0].entrada(20);
  estoque[1].saida(10);

  print("\nNOVOS ESTOQUE:");
  estoque.add(itemEstoque("Tablet", 75, 1000));
  estoque.add(itemEstoque("Fone de Ouvido", 200, 250));
  estoque.add(itemEstoque("Smartwatch", 150, 800));
 
  for (var item in estoque) {
    print("Produto: ${item.nome}, Quantidade em estoque: ${item.quantidade}, Preço: R\$ ${item.preco}");
  }

  print("\nALTERAÇÃO DE PREÇO:");
  estoque[3].alterarPreco(1400);
}


class itemEstoque {
  String nome;
  int quantidade;
  double preco;
  itemEstoque(this.nome, this.quantidade, this.preco);

  void entrada(int qtd) {
    quantidade += qtd;
    print("Entrada de $qtd unidades do produto $nome");
  }

  void saida(int qtd) {
    if (quantidade >= qtd) {
      quantidade -= qtd;
      print("Saída de $qtd unidades do produto $nome");
    } else {
      print("Quantidade insuficiente em estoque para o produto $nome");
    }
  }

  void alterarPreco(double novoPreco) {
    preco = novoPreco;
    print("Preço do produto $nome foi atualizado para R\$ $preco");
  }
}
