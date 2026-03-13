# `template-project`

**Template universal para projetos Python, ML/AI e GenAI**  
Inclui gerenciamento de dependências com `uv`, pré-commit hooks, testes com `pytest`, linting com `black`, `isort` e `ruff`, e integração com Docker + GitHub Actions CI/CD.

---

## 🚀 Funcionalidades

- Estrutura de projeto modular para Python e projetos de ML/AI.
- Gerenciamento de dependências com `uv` e `uv.lock`.
- Ambiente de desenvolvimento consistente com pré-commit hooks:
  - `black` (formatação de código)
  - `isort` (organização de imports)
  - `ruff` (linting avançado)
- Testes unitários com `pytest`.
- Containerização com Docker para garantir portabilidade.
- CI/CD completo com GitHub Actions:
  - Build e teste do código.
  - Rodar linters e testes automaticamente.
  - Build e teste da imagem Docker.
- Compatível com Python >= 3.12.

---

## 📁 Estrutura do Projeto

```text
template-project/
├── docker/
│   └── Dockerfile             # Dockerfile para build da imagem
├── src/
│   ├── __init__.py
│   ├── main.py                # Arquivo principal do projeto
│   └── config.py              # Configurações do projeto
├── tests/
│   └── test_main.py           # Testes unitários
├── .pre-commit-config.yaml    # Configuração de pré-commit
├── pyproject.toml             # Dependências e configuração de linters
├── uv.lock                    # Lockfile de dependências
├── .python-version            # Versão do Python
├── README.md
└── makefile                   # Tarefas automatizadas (opcional)
```

---

## ⚡ Requisitos

- Python >= 3.12
- `uv` (gerenciador de dependências)
- Docker (para build de imagem)
- Git (para versionamento e pré-commit)
- GitHub Actions (para CI/CD)

---

## 💻 Instalação

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/template-project.git
cd template-project
```

2. Instale uv:

```bash
pip install uv
```

3. Sincronize dependências do projeto:

```bash
uv sync --all-extras --dev
```

4. Instale hooks de pré-commit:

```bash
uv run pre-commit install
```

## 🛠 Uso

Rodar o projeto

```bash
uv run python -m src.main

```

Saída esperada:

```bash
Hello from template-project!

```

Rodar testes

```bash
uv run pytest -v
```

Rodar linters

```bash
uv run pre-commit run --all-files
```

## 🐳 Docker
Build da imagem

```bash
docker build -f docker/Dockerfile -t template-project .
```

Rodar container

```bash
docker run --rm template-project
```

Rodar testes dentro do Docker

```bash
docker run --rm template-project uv run pytest
```

## ✅ CI/CD com GitHub Actions

* Arquivo: .github/workflows/ci.yml
* Rodará automaticamente para push ou pull request na branch main.
* Passos:
    1. Checkout do código.
    2. Setup Python 3.12.
    3. Instalação do uv e dependências.
    4. Linters: black, isort, ruff.
    5. Testes unitários.
    6. Build da imagem Docker.
    7. Teste de execução do container.


## 🧹 Padrões de código

* black → formatação de código
* isort → organização de imports
* ruff → linting

Todos os hooks estão configurados para rodar automaticamente em cada commit.


## ⚙️ Configurações do projeto

pyproject.toml → dependências e ferramentas de linting.

uv.lock → garante reproducibilidade de ambientes.

.python-version → especifica a versão do Python para o projeto.


## 🧪 Testando o template

Você pode criar novos projetos a partir deste template:

```bash
uv run uv clone https://github.com/seu-usuario/template-project.git meu-novo-projeto
cd meu-novo-projeto
uv sync --all-extras --dev
uv run pre-commit install
```

Agora seu novo projeto estará pronto para uso, com linters, testes, Docker e CI/CD funcionando automaticamente.


## 📌 Observações

* Template pronto para ML, GenAI ou projetos Python comuns.
* Mantém ambientes consistentes localmente e no CI/CD.
* Permite rodar o projeto localmente ou em container sem alterar nada no código.
* Dependências são totalmente gerenciadas por uv.
