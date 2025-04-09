
# 🚀 Projeto Java com CI/CD usando GitHub Actions

Este repositório contém um sistema Java com Maven que implementa um **pipeline de integração e entrega contínua (CI/CD)** utilizando **GitHub Actions**.

---

## 📦 Tecnologias Utilizadas

- Java (versão 23)
- Maven
- JUnit (para testes)
- GitHub Actions (para CI/CD)
- Mailutils (para envio de e-mail via terminal)

---

## 🔁 Etapas do Pipeline

### 1. 🧪 Testes

Executa os testes automatizados do projeto:

```bash
mvn test
```

### 2. 🏗️ Build (Empacotamento)

Compila e empacota o projeto em um `.jar`:

```bash
mvn package
```

Também armazena os seguintes artefatos no GitHub:
- Arquivo `.jar`
- Relatório de testes (`.xml` ou `.txt`, dependendo da configuração)

### 3. 📧 Notificação

Executa um script (`scripts/shell.sh`) que instala o utilitário `mailutils` e envia um e-mail informando a execução do pipeline:

> ⚠️ O e-mail é passado via **GitHub Secrets**, como variável de ambiente chamada `RECIPIENT_EMAIL`.

---

## 🔧 Variáveis de Ambiente (Secrets)

O pipeline depende da configuração de uma secret no repositório:

| Nome da Secret       | Descrição                  |
|----------------------|----------------------------|
| `RECIPIENT_EMAIL`    | E-mail que receberá a notificação |

---

## ✅ Status Final

Todo o pipeline de CI/CD está funcional e cumpre os seguintes objetivos:

- Executa testes ✅
- Gera e armazena artefatos ✅
- Envia notificação via e-mail ✅
- Utiliza variáveis de ambiente e paralelismo ✅
- Informa sucesso ou falha da execução ✅

---
