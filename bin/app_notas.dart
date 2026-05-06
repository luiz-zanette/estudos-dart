import "dart:io";

void main () {
  List<String> notas = <String>[];
  print("Bem-vindo ao aplicativo de notas e lembretes!\n");
  menu(notas);
}

String getComando () {
// Lista de comandos válidos
 List<String> comandos = <String>["1", "2", "3"]; 
// Cria lista com comandos válidos
 print("Digite um comando:\n 1- Adicionar nota/lembrete\n 2- Listar notas/lembretes\n 3- Sair"); 
// Recebe a entrada do usuário e armazena na variável "entrada"
 String? entrada = stdin.readLineSync();

// Valida se a entrada é nula ou se não é um comando válido 
 if (entrada == null || !comandos.contains(entrada)) { 
   print("Comando inválido, tente novamente.\n");
   getComando();
 }
 return entrada!;
}

List <String> adicionarNota (List<String> notas) {
  print("Digite a nota/lembrete que deseja adicionar:");
  String? nota = stdin.readLineSync();
  if (nota != null && nota.isNotEmpty) {
    notas.add(nota);
    print("Nota/lembrete adicionado com sucesso!\n");
  } else {
    print("Entrada inválida, tente novamente.\n");
    adicionarNota(notas);
  }
  return notas;
}

void listarNotas (List<String> notas) {
  if (notas.isEmpty) {
    print("Nenhuma nota/lembrete encontrado.\n");
  } else {
    print("Notas/Lembretes:");
    for (int i = 0; i < notas.length; i++) {
      print(notas[i]);
      print("\n");
    }
  }
}

void menu (List<String> notas) {
  String comando = getComando();
  switch (comando) {
    case "1":
      adicionarNota(notas);
      menu(notas);
    case "2":
      listarNotas(notas);
      menu(notas);

    case "3":
      print("Saindo do aplicativo. Até mais!");
      exit(0);
  }
  menu(notas);
} 