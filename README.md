![poster](./.github/poster.png)
![Robot Framework](https://img.shields.io/badge/Robot_Framework-Testing-04C38E?logo=robotframework) ![CI/CD](https://img.shields.io/github/actions/workflow/status/sthefanyricardo/robot-actions/tests_CI.yml?label=CI/CD&logo=github) ![Último commit](https://img.shields.io/github/last-commit/sthefanyricardo/robot-actions?label=Último%20commit&style=flat&logo=git)

---

# Automação com Robot Framework e GitHub Actions

Este repositório contém o projeto desenvolvido durante o curso [**Testes contínuos em Robot Framework no Github Actions**](https://www.udemy.com/course/testes-continuos-em-robot-framework-no-github-actions/), ministrado por Fernando Papito na plataforma Udemy.

O objetivo é demonstrar a integração de testes automatizados com Robot Framework em um pipeline de CI/CD utilizando o GitHub Actions, incluindo relatórios, métricas e evidências visuais.

Com este setup, é possível garantir que os testes de regressão sejam executados automaticamente a cada alteração no código, proporcionando uma detecção precoce de bugs e um aumento na confiabilidade do sistema.

<details>
<summary> Clique aqui para expandir as informações sobre o curso </summary>
  
  ## 🎯 Objetivo

  O principal objetivo deste projeto é construir um fluxo de trabalho (workflow) de testes contínuos que:
  - 🔄 Automatize a execução dos testes de regressão do Robot Framework.
  - ⚙️ Utilize o GitHub Actions para orquestrar o pipeline de testes.
  - 📊 Gere relatórios, screenshots e métricas para evidenciar a execução dos testes.

  ## 📑 Conteúdo do Curso
  
  Durante este treinamento, você aprenderá a construir e otimizar um fluxo de trabalho de testes contínuos no GitHub Actions, criando um histórico robusto de testes de regressão, acompanhado de relatórios detalhados e evidências visuais essenciais.
  
  O curso aborda os seguintes conceitos:
  - Boas práticas de Testes Contínuos.
  - Habilidades de DevOps.
  - Boas práticas para a implementação de testes automatizados com Robot Framework.
  - Como executar testes de regressão no GitHub Actions.

</details>

---

## 📊 Relatórios e Métricas

A execução dos testes com Robot Framework gera relatórios completos e evidências que podem ser acompanhados para garantir a rastreabilidade, análise detalhada e colaboração da equipe.

- Relatórios Nativos do Robot Framework:
  - report.html: Um resumo executivo da execução de testes.
  - log.html: O log detalhado da execução, incluindo todos os passos e evidências.

- Relatórios Automatizados no GitHub:
  - Uma ação de relatório de terceiros (robotframework-reporter-action) é usada para postar um resumo dos resultados de teste diretamente em cada commit e pull request.

- Evidências Visuais:
  - Captura automática de screenshots na pasta resultados/browser/screenshot em caso de falhas.
  
---

## ⚙️ Fluxo de Testes com GitHub Actions

Os fluxos de trabalho (workflows) estão configurados no diretório ```.github/workflows/```. Cada arquivo YAML define um pipeline de CI/CD que é ativado automaticamente em eventos de ```push``` e ```pull request``` na branch ```main```, além de poder ser executado manualmente.

- ```tests_CI.yml:``` Este workflow foi desenhado para a integração contínua (CI). Ele executa a suíte de testes de ponta a ponta em múltiplos navegadores (chromium e firefox) usando uma matriz e gera relatórios que são visíveis no próprio GitHub.

---

## 📁 Estrutura do Repositório

O projeto segue a estrutura padrão do Robot Framework e inclui arquivos de configuração para a integração contínua.

<details>
<summary>Clique aqui para expandir a estrutura de arquivos</summary>

  ```text
    📦 robot-actions/
    ┣ 📂 .github/
    ┃ └── workflows/
    ┃     └── 📜 tests_CI.yml       # Workflow para execução de testes no GitHub Actions
    ┣ 📂 resources/
    ┃ ├── 📜 actions.resource       # Palavras-chave de ações e interações
    ┃ └── 📜 base.resource          # Palavras-chave de configuração e utilidades
    ┣ 📂 resultados/
    ┃ ├── 📂 browser/screenshot     # Screenshots de falhas
    ┃ ├── 📜 log.html               # Log detalhado da execução
    ┃ ├── 📜 output.xml             # Saída em XML para relatórios
    ┃ └── 📜 report.html            # Resumo da execução
    ┣ 📂 tests/
    ┃ └── 📜 login.robot            # Arquivos de casos de teste
    ┣ 📜 .gitignore                 # Arquivos e pastas a serem ignorados pelo Git
    ┣ 📜 README.md                  # Documentação principal do repositório
    ┗ 📜 requirements.txt           # Dependências do Python
  ```

</details>

---

## 🛠️ Tecnologias, Ferramentas e Requisitos
Este projeto foi desenvolvido com as seguintes ferramentas e tecnologias. Certifique-se de que sua máquina atende aos requisitos abaixo para executar os testes.

### Linguagem e Frameworks

<details>
<summary>Clique aqui para expandir as informações</summary>
  
  - [**Robot Framework**]() → Framework de automação de testes e RPA.
  - [**Python**]() → Linguagem de programação utilizada como base para o Robot Framework.
  - [**Browser Library (Playwright)**]() → Biblioteca para automação de testes web.
  - [**GitHub Actions**]() → Plataforma de CI/CD para automatizar fluxos de trabalho.

</details>

### Ferramentas de Desenvolvimento

<details>
<summary>Clique aqui para expandir as informações</summary>

  - [**Visual Studio Code**]() → IDE utilizada para desenvolvimento e manutenção dos testes.
  - [**Git**]() → Controle de versão.
  - [**GitHub**]() → Repositório remoto para versionamento e compartilhamento do código.

</details>

---

## 📌 Agradecimentos

- Ao instrutor Fernando Papito pelo curso e compartilhamento de conhecimento.
- À comunidade de automação de testes por todo o suporte e inspiração.
- Observações:
  - Este repositório é destinado a fins educacionais para demonstrar conceitos da execução de testes automatizados com Robot Framework e o Github Actions.
  - Sinta-se à vontade para clonar, modificar e utilizar este código como base para seus próprios projetos.  

--- 

## 🙋‍♀️ Autora

Feito com ❤️ por **Sthefany A. Ricardo**.

- Este `README.md` foi gerado com a assistência de modelos de linguagem como o Google Gemini e o ChatGPT, para garantir clareza, formatação e um conteúdo completo.
