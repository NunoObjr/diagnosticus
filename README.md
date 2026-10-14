# Diagnosticus Action

Aplicativo **Flutter** de apoio ao ensino por **simulação de casos** (casos de emergência): professores organizam **turmas e grupos**, alunos resolvem **casos simulados** e acompanham sua **pontuação** e o progresso de conclusão.

O app consome uma **API REST** externa, com login por *Basic Auth*, e foi organizado em módulos por funcionalidade com **GetX**.

## Funcionalidades

- **Login** e cadastro de usuários
- Dois perfis de navegação: **professor** (`home`) e **aluno** (`home_student`)
- **Turmas** (`classes`): busca de turma e informações como professor responsável e descrição
- **Casos** (`cases`): lista de casos emergenciais organizados por grupos
- **Simulação** (`simulation`): seleção e execução do caso
- **Pontuação** (`pontuation`): nota e percentual concluído
- **Perfil** e tela **Sobre**

## Conceitos técnicos

**GetX (state management + rotas + DI).** Cada módulo tem *Page*, *Controller* e *Binding*:

```
modules/<feature>/presenter/
  <feature>_page.dart         # UI
  <feature>_controller.dart   # estado (GetxController, Rx, StateMixin)
  <feature>_binding.dart      # injeção de dependências da rota
```

As rotas ficam centralizadas em `lib/routes` (`DiagnosticusRoutes` e `DiagnosticusPages`).

**Estado com `StateMixin`.** Os controllers expõem estados de carregamento/sucesso/erro com `change(..., status: RxStatus.success())`, consumidos na UI com `obx`.

**Camada de rede com Dio.** `DiagnosticusService` mantém uma conexão singleton com `baseUrl` configurada; os *datasources* (ex.: `LoginDatasource`) isolam as chamadas HTTP e a autenticação **Basic** (`Authorization: Basic base64(user:senha)`).

**Widgets reutilizáveis.** `core/widgets` reúne botões e inputs padronizados.

## Stack

Flutter · Dart · GetX (`get`) · Dio

## Estrutura

```
lib/
  main.dart
  core/
    utils/        # DiagnosticusService (Dio)
    widgets/      # custom_button, custom_input, simulation_button
  modules/
    login/ home/ homeStudent/ classes/ cases/
    simulation/ pontuation/ profile/ about/
  routes/         # routes.dart e pages.dart
```

## Como executar

```bash
flutter pub get
flutter run
```

O app depende da API do projeto estar disponível; para apontar para outro ambiente, altere a `baseUrl` em `lib/core/utils/diagnosticus_service.dart`.

## Observação de segurança

*Basic Auth* só deve trafegar por **HTTPS**, e nenhuma credencial deve ser guardada no código.
