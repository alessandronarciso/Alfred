# Tarefas - Gerenciador de Tarefas

Um aplicativo desktop desenvolvido em **Delphi** para gerenciamento simples e intuitivo de tarefas pessoais.

## 📋 Descrição

O **Tarefas** é uma aplicação educacional que demonstra conceitos fundamentais de programação orientada a objetos (POO) em Delphi, incluindo encapsulamento, propriedades e métodos.

## ✨ Funcionalidades

- ✅ Criar novas tarefas com descrição e data limite
- 📅 Definir data limite para cada tarefa
- ✔️ Marcar tarefas como concluídas
- ⏰ Verificar se uma tarefa está atrasada
- 📝 Visualizar todas as tarefas em uma lista

## 🏗️ Arquitetura

### Estrutura do Projeto

```
Principal.pas        → Formulário principal (UI)
Classes/
  └─ Tarefa.pas      → Classe de modelo de tarefa
```

### Componentes Principais

#### **TTarefa** (Classe de Modelo)

- **Atributos privados:**

  - `FDescricao`: Descrição da tarefa
  - `FDataLimite`: Data limite de execução
  - `FConcluida`: Status de conclusão

- **Métodos públicos:**
  - `Create()`: Inicializa uma nova tarefa
  - `Concluir()`: Marca a tarefa como concluída
  - `EstaAtrasada()`: Verifica se a tarefa está atrasada

#### **TfPrincipal** (Formulário Principal)

- Campo de entrada para descrição da tarefa
- Seletor de data com `TDateTimePicker`
- Botão "Lançar" para adicionar tarefas
- Memo para exibição das tarefas

## 🛠️ Requisitos

- Delphi 11 ou superior
- VCL (Visual Component Library)
- Windows 10/11

## 🚀 Como Compilar e Executar

1. Abra o projeto no Delphi:

   ```
   Tarefas.dproj
   ```

2. Pressione `F9` (ou Build → Build Project) para compilar

3. Pressione `F10` (ou Run → Run) para executar

## 📚 Conceitos Demonstrados

- **Programação Orientada a Objetos (POO)**

  - Classes e objetos
  - Encapsulamento de dados
  - Propriedades (getters/setters)

- **Padrão VCL (Delphi)**

  - Criação de formulários
  - Manipulação de componentes visuais
  - Event handlers

- **Validação de dados**
  - Verificação de campos vazios
  - Validação de datas

## 📝 Exemplo de Uso

```pascal
var
  MinhaTarefa: TTarefa;
begin
  // Criar uma nova tarefa
  MinhaTarefa := TTarefa.Create('Estudar Delphi', Date + 3);

  // Verificar se está atrasada
  if MinhaTarefa.EstaAtrasada then
    ShowMessage('Tarefa atrasada!')
  else
    ShowMessage('Tarefa no prazo.');

  // Marcar como concluída
  MinhaTarefa.Concluir;
end;
```

## 📂 Estrutura de Diretórios

```
Tarefas/
├── Principal.dfm          → Design da interface principal
├── Principal.pas          → Código do formulário
├── Tarefas.dpr            → Arquivo de projeto
├── Tarefas.dproj          → Configuração do projeto
├── Classes/
│   └── Tarefa.pas         → Classe de modelo
├── Win32/
│   └── Debug/             → Arquivos compilados
└── __history/             → Histórico de versões
```

## 👨‍💻 Autor

Desenvolvido como estudo de Programação Orientada a Objetos em Delphi

## 📄 Licença

Este projeto é fornecido como material educacional.

---

**Nota:** Este é um projeto de estudo. Para aplicações em produção, considere adicionar funcionalidades como persistência de dados (banco de dados), tratamento avançado de exceções e testes unitários.
