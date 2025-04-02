![poster](./.github/poster.png)

## Sobre

Repositório do treinamento: [Testes contínuos em Robot Framework no Github Actions](https://www.udemy.com/course/testes-continuos-em-robot-framework-no-github-actions/)

## Techs
- Robot Framework
- Browser (Playwright)
- Python

## Como executar

1. Clonar o repositório, instalar as dependências
```
pip install -r requirements.text
```

2. Executar testes em Headless
```
robot -d ./logs -v IS_HEADLESS:True tests
```

3. Executar testes em modo assistido
```
robot -d ./logs -v IS_HEADLESS:False tests
```

<hr>
Curso disponível em https://www.udemy.com/course/testes-continuos-em-robot-framework-no-github-actions/ 