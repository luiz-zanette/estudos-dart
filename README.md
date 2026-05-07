# 📝 App de Notas: `app_notas`

Uma aplicação interativa de terminal desenvolvida em **Dart** para gerenciamento rápido de notas e lembretes. Este projeto foca na manipulação de coleções e na interação direta com o usuário via entrada de dados.

---

### 🚀 Funcionalidades
O aplicativo opera em um loop de menu contínuo, permitindo:

1.  **Adicionar Notas:** Captura entradas de texto do usuário e as armazena em uma lista dinâmica.
2.  **Listagem Dinâmica:** Percorre a lista de registros e exibe todos os lembretes salvos.
3.  **Validação de Comandos:** Filtra entradas nulas ou comandos inexistentes para garantir a estabilidade do programa.
4.  **Sistema de Saída:** Encerramento seguro da execução através do comando dedicado.

---

### 🛠️ Conceitos Dart Aplicados

| Conceito | Implementação no Código |
| :--- | :--- |
| **Recursividade** | Funções que chamam a si mesmas para manter o menu e validar entradas. |
| **Listas Dinâmicas** | Uso de `List<String>` para armazenamento em memória. |
| **Fluxo de Controle** | Implementação de `switch/case` para navegação entre funcionalidades. |
| **Input/Output** | Utilização da biblioteca `dart:io`. |
