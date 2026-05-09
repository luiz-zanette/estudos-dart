import "dart:io";

void main() {
totalVenda();
}

void totalVenda() {
  
Map<String, double> precosProdutos = { 
  "Camiseta": 30.0, 
  "Calça": 50.0, 
  "Boné": 15.0, 
  "Tênis": 120.0 
};

List<String> produtosComprados = ["Camiseta", "Calça", "Boné", "Tênis"]; 
double total = 0.0;

for (String produto in produtosComprados) {
  total += precosProdutos[produto]!;
}

print("Total da venda: $total");
}
